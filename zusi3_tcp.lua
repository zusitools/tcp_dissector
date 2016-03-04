zusi3_proto = Proto("zusi3_tcp", "Zusi 3 TCP")

-- Returns the offset at which to continue parsing. Throws an exception if there is not enough data.
function build_tree(buffer, offset, tree)
  local oldoffset = offset
  while true do
    if offset == buffer:len() then return end

    local length = buffer(offset,4):le_uint()
    offset = offset + 4

    if length == 0x00000000 then
      -- Node start
      id = buffer(offset,2):le_uint()
      offset = offset + 2
      offset = build_tree(buffer, offset, tree:add(buffer(offset - 4,4), string.format("Node, id = 0x%X", id)))
    elseif length == 0xffffffff then
      -- Node end
      tree:set_len(offset - oldoffset)
      return offset
    else
      -- Attribute
      id = buffer(offset,2):le_uint()
      payload = buffer(offset + 2, length - 2):bytes()
      tree:add(buffer(offset, length), string.format("Attribute, id = 0x%X, payload = %s", id, payload))
      offset = offset + length
    end
  end
end

function zusi3_proto.dissector(buffer, pinfo, tree)
  local subtree = tree:add(zusi3_proto,buffer(), "Zusi 3 TCP data")
  if not pcall(build_tree, buffer, 0, subtree) then
    pinfo.desegment_len = DESEGMENT_ONE_MORE_SEGMENT
    pinfo.desegment_offset = 0 -- a TCP packet should not contain more than one PDU, so always start from the beginning
  else
    pinfo.cols.protocol = "Zusi 3"
  end
end

-- register a chained dissector for port 1436
local tcp_dissector_table = DissectorTable.get("tcp.port")
dissector = tcp_dissector_table:get_dissector(1436)
tcp_dissector_table:add(1436, zusi3_proto)
