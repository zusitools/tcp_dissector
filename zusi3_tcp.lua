zusi3_proto = Proto("zusi3_tcp", "Zusi 3 TCP")

data_format = {
  nodes = {
    [0x0001] = {
      name = "Verbindungsaufbau",
      nodes = {
        [0x0001] = {
          name = "Befehl HELLO",
          attributes = {
            [0x0001] = { name = "Protokoll-Version", typ = "word", },
            [0x0002] = { name = "Client-Typ", typ = "word", enum = {
              [1] = "Zusi",
              [2] = "Fahrpult",
            }},
            [0x0003] = { name = "Client-Name", typ = "string", },
            [0x0004] = { name = "Client-Version", typ = "string", },
          },
        },
        [0x0002] = {
          name = "Befehl ACK_HELLO",
          attributes = {
            [0x0001] = { name = "Zusi-Version", typ = "string", },
            [0x0002] = { name = "Zusi-Verbindungsinfo", typ = "string", },
            [0x0003] = { name = "Akzeptiert", typ = "byte", enum = {
              [0] = "Client akzeptiert",
              other = "Client nicht akzeptiert",
            }},
          },
        },
      },
    },

    [0x0002] = {
      name = "Client-Anwendung 02 (Fahrpult)",
      nodes = {
        [0x0003] = {
          name = "Befehl NEEDED_DATA",
          nodes = {
            [0x000A] = {
              name = "Untergruppe Führerstandsanzeigen",
              attributes = {
                [0x0001] = { name = "Führerstands-ID", typ = "word" },
              },
            },
            [0x000B] = {
              name = "Unterguppe Führerstandsbedienung",
            },
            [0x000C] = {
              name = "Untergruppe Programmdaten",
              attributes = {
                [0x0001] = { name = "Programm-ID", typ = "word" },
              }
            },
          },
        },
        [0x0004] = {
          name = "Befehl ACK_NEEDED_DATA",
          attributes = {
            [0x0001] = { name = "Akzeptiert", typ = "byte", enum = {
              [0] = "Befehl akzeptiert",
              other = "Befehl nicht akzeptiert",
            }},
          },
        },
        [0x000A] = {
          name = "Befehl DATA_FTD - Führerstandsanzeigen",
          attributes = {
            other = { name = "Physikalische Größe", typ = "single" }
          }
        },
      },
    },
  },
}

-- Returns the offset at which to continue parsing. Throws an exception if there is not enough data.
function build_tree(buffer, offset, tree, parent_node)
  local oldoffset = offset
  while true do
    if offset == buffer:len() then return end

    local length = buffer(offset,4):le_uint()
    offset = offset + 4

    if length == 0x00000000 then
      -- Node start
      id = buffer(offset,2):le_uint()
      offset = offset + 2

      if parent_node ~= nil and parent_node.nodes ~= nil then
        node = parent_node.nodes[id]
      else
        node = nil
      end

      if node ~= nil then
        descr = string.format("Node, id = 0x%x [%s]", id, node.name)
      else
        descr = string.format("Node, id = 0x%x", id)
      end

      offset = build_tree(buffer, offset, tree:add(buffer(offset - 4,4), descr), node)
    elseif length == 0xffffffff then
      -- Node end
      tree:set_len(offset - oldoffset)
      return offset
    else
      -- Attribute
      id = buffer(offset,2):le_uint()
      value = buffer(offset + 2, length - 2)

      if node ~= nil and node.attributes ~= nil then
        if node.attributes[id] ~= nil then
          attr = node.attributes[id]
        else
          attr = node.attributes.other
        end
      else
        attr = nil
      end

      if attr ~= nil then
        descr = string.format("Attribute, id = 0x%X [%s]", id, attr.name)
        typ = attr.typ
        if typ == "byte" or typ == "word" or typ == "cardinal" then
          descr = descr .. string.format(", value: %s = %d", typ, value:le_uint())
          if attr.enum ~= nil then
            value_uint = value:le_uint()
            if attr.enum[value_uint] ~= nil then
              descr = descr .. string.format(" [%s]", attr.enum[value_uint])
            elseif attr.enum.other ~= nil then
              descr = descr .. string.format(" [%s]", attr.enum.other)
            end
          end
          descr = descr .. string.format(" [%s]", value:bytes())

        elseif typ == "shortint" or typ == "smallint" or typ == "integer" then
          descr = descr .. string.format(", value: %s = %d [%s]", typ, value:le_sint(), value:bytes())

        elseif typ == "int64" then
          descr = descr .. string.format(", value: %s = %d [%s]", typ, value:le_int64(), value:bytes())

        elseif typ == "single" or typ == "double" then
          descr = descr .. string.format(", value: %s = %f [%s]", typ, value:le_float(), value:bytes())

        elseif typ == "string" then
          descr = descr .. string.format(", value: string = \"%s\" [%s]", value:string(), value:bytes())

        else
          descr = descr .. string.format(", value: ? = %s", value:bytes())
        end
      else
        descr = string.format("Attribute, id = 0x%X, value: ? = %s", id, value:bytes())
      end

      tree:add(buffer(offset, length), descr)
      offset = offset + length
    end
  end
end

function zusi3_proto.dissector(buffer, pinfo, tree)
  local subtree = tree:add(zusi3_proto,buffer(), "Zusi 3 TCP data")
  if not pcall(build_tree, buffer, 0, subtree, data_format) then
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
