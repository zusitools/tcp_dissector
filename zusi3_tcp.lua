zusi3_proto = Proto("zusi3_tcp", "Zusi 3 TCP")

phys_quantities = {
  [0x0000] = "keine Funktion",
  [0x0001] = "Geschwindigkeit",
  [0x0002] = "Druck Hauptluftleitung",
  [0x0003] = "Druck Bremszylinder",
  [0x0004] = "Druck Hauptluftbehälter",
  [0x0005] = "Luftpresser läuft",
  [0x0006] = "Luftstrom Fvb",
  [0x0007] = "Luftstrom Zbv",
  [0x0008] = "Lüfter an",
  [0x0009] = "Zugkraft gesamt",
  [0x000A] = "Zugkraft pro Achse",
  [0x000B] = "Zugkraft-Soll gesamt",
  [0x000C] = "Zugkraft-Soll pro Achse",
  [0x000D] = "Oberstrom",
  [0x000E] = "Fahrleitungsspannung",
  [0x000F] = "Motordrehzahl",
  [0x0010] = "Uhrzeit Stunde",
  [0x0011] = "Uhrzeit Minute",
  [0x0012] = "Uhrzeit Sekunde",
  [0x0013] = "Hauptschalter",
  [0x0014] = "Trennschütz",
  [0x0015] = "Fahrstufe",
  [0x0016] = "3D-Fenster",
  [0x0017] = "AFB-Sollgeschwindigkeit",
  [0x0018] = "Druck Hilfsluftbehälter",
  [0x0019] = "Zurückgelegter Gesamtweg",
  [0x001A] = "LM Getriebe",
  [0x001B] = "LM Schleudern",
  [0x001C] = "LM Gleiten",
  [0x001D] = "LM Mg-Bremse",
  [0x001E] = "LM H-Bremse",
  [0x001F] = "LM R-Bremse",
  [0x0020] = "LM Hochabbremsung",
  [0x0021] = "LM Schnellbremsung",
  [0x0022] = "Status Notbremsung",
  [0x0023] = "LM Uhrzeit (digital)",
  [0x0024] = "LM Drehzahlverstellung",
  [0x0025] = "LM Fahrtrichtung vor",
  [0x0026] = "LM Fahrtrichtung zurück",
  [0x0027] = "LM Fahrtrichtung M",
  [0x0028] = "Hintergrundbild",
  [0x0029] = "Motordrehmoment",
  [0x002A] = "Motorlast normiert",
  [0x002B] = "Tunnel",
  [0x002C] = "Schienenstoß/Weiche",
  [0x002D] = "Stahlbrücke",
  [0x002E] = "Steinbrücke",
  [0x002F] = "x-Koordinate",
  [0x0030] = "y-Koordinate",
  [0x0031] = "z-Koordinate",
  [0x0032] = "UTM-Referenzpunkt x [km]",
  [0x0033] = "UTM-Referenzpunkt y [km]",
  [0x0034] = "UTM-Zone",
  [0x0035] = "UTM-Zone 2",
  [0x0036] = "AFB an",
  [0x0037] = "Individuell 01",
  [0x0038] = "Individuell 02",
  [0x0039] = "Individuell 03",
  [0x003A] = "Individuell 04",
  [0x003B] = "Individuell 05",
  [0x003C] = "Individuell 06",
  [0x003D] = "Individuell 07",
  [0x003E] = "Individuell 08",
  [0x003F] = "Individuell 09",
  [0x0040] = "Individuell 10",
  [0x0041] = "Individuell 11",
  [0x0042] = "Individuell 12",
  [0x0043] = "Individuell 13",
  [0x0044] = "Individuell 14",
  [0x0045] = "Individuell 15",
  [0x0046] = "Individuell 16",
  [0x0047] = "Individuell 17",
  [0x0048] = "Individuell 18",
  [0x0049] = "Individuell 19",
  [0x004A] = "Individuell 20",
  [0x004B] = "Datum",
  [0x004C] = "Gleiskrümmung",
  [0x004D] = "Streckenhöchstgeschwindigkeit",
  [0x004E] = "Zugkraftvorschlag Autopilot",
  [0x004F] = "Beschleunigung x",
  [0x0050] = "Beschleunigung y",
  [0x0051] = "Beschleunigung z",
  [0x0052] = "Drehbeschleunigung x-Achse",
  [0x0053] = "Drehbeschleunigung y-Achse",
  [0x0054] = "Drehbeschleunigung z-Achse",
  [0x0055] = "Stromabnehmer",
  [0x0056] = "LM Federspeicherbremse",
  [0x0057] = "Zustand Federspeicherbremse",
  [0x0058] = "Steuerwagen: LM Getriebe",
  [0x0059] = "Steuerwagen: LM Schleudern",
  [0x005A] = "Steuerwagen: LM Gleiten",
  [0x005B] = "Steuerwagen: LM H-Bremse",
  [0x005C] = "Steuerwagen: LM R-Bremse",
  [0x005D] = "Steuerwagen: LM Drehzahlverstellung",
  [0x005E] = "Druck Zeitbehälter",
  [0x005F] = "Geschwindigkeit (absolut)",
  [0x0060] = "Zug ist entgleist",
  [0x0061] = "Kilometrierung (Zugspitze)",
  [0x0062] = "Motorstrom",
  [0x0063] = "Motorspannung",
  [0x0064] = "Status Sifa",
  [0x0065] = "Status Zugsicherung",
  [0x0066] = "Status Türen",
  [0x0067] = "Individuell 21",
  [0x0068] = "Individuell 22",
  [0x0069] = "Individuell 23",
  [0x006A] = "Individuell 24",
  [0x006B] = "Individuell 25",
  [0x006C] = "Individuell 26",
  [0x006D] = "Individuell 27",
  [0x006E] = "Individuell 28",
  [0x006F] = "Individuell 29",
  [0x0070] = "Individuell 30",
  [0x0071] = "Individuell 31",
  [0x0072] = "Individuell 32",
  [0x0073] = "Individuell 33",
  [0x0074] = "Individuell 34",
  [0x0075] = "Individuell 35",
  [0x0076] = "Individuell 36",
  [0x0077] = "Individuell 37",
  [0x0078] = "Individuell 38",
  [0x0079] = "Individuell 39",
  [0x007A] = "Individuell 40",
  [0x007B] = "Steuerwagen: Lüfter an",
  [0x007C] = "Steuerwagen: Zugkraft gesamt",
  [0x007D] = "Steuerwagen: Zugkraft pro Achse",
  [0x007E] = "Steuerwagen: Zugkraft-Soll gesamt",
  [0x007F] = "Steuerwagen: Zugkraft-Soll pro Achse",
  [0x0080] = "Steuerwagen: Oberstrom",
  [0x0081] = "Steuerwagen: Fahrleitungsspannung",
  [0x0082] = "Steuerwagen: Motordrehzahl",
  [0x0083] = "Steuerwagen: Hauptschalter",
  [0x0084] = "Steuerwagen: Trennschütz",
  [0x0085] = "Steuerwagen: Fahrstufe",
  [0x0086] = "Steuerwagen: Motordrehmoment",
  [0x0087] = "Steuerwagen: Motorlast normiert",
  [0x0088] = "Steuerwagen: Stromabnehmer",
  [0x0089] = "Steuerwagen: Motorstrom",
  [0x008A] = "Steuerwagen: Motorspannung",
  [0x008B] = "Geschwindigkeit (absolut) inkl. Schleudern",
  [0x008C] = "Batteriehauptschalter aus",
  [0x008D] = "Status Fahrzeug",
  [0x008E] = "Status Zugverband",
  [0x008F] = "Bremsprobefunktion",
  [0x0090] = "Zug- und Brems-Gesamtkraftsoll normiert",
  [0x0091] = "Steuerwagen: Zug- und Brems-Gesamtkraftsoll normiert",
  [0x0092] = "Status Weichen",
  [0x0093] = "Zug- und Brems-Gesamtkraftsoll absolut normiert",
  [0x0094] = "Steuerwagen: Zug- und Brems-Gesamtkraftsoll absolut normiert",
}

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
                [0x0001] = { name = "Führerstands-ID", typ = "word", enum = phys_quantities },
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
            other = { name = "Physikalische Größe", name_enum = phys_quantities, typ = "single" }
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

      if attr.name_enum ~= nil and attr.name_enum[id] ~= nil then
        name = attr.name_enum[id]
      else
        name = attr.name
      end

      if attr ~= nil then
        descr = string.format("Attribute, id = 0x%X [%s]", id, name)
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
