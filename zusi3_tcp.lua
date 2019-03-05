--    This program is free software: you can redistribute it and/or modify
--    it under the terms of the GNU General Public License as published by
--    the Free Software Foundation, either version 3 of the License, or
--    (at your option) any later version.
--
--    This program is distributed in the hope that it will be useful,
--    but WITHOUT ANY WARRANTY; without even the implied warranty of
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--    GNU General Public License for more details.
--
--    You should have received a copy of the GNU General Public License
--    along with this program.  If not, see <http://www.gnu.org/licenses/>.

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
  [0x0032] = "UTM-Referenzpunkt x",
  [0x0033] = "UTM-Referenzpunkt y",
  [0x0034] = "UTM-Zone",
  [0x0035] = "UTM-Zone 2",
  [0x0036] = "AFB an",
  [0x0037] = "Fahrpultintern 01",
  [0x0038] = "Fahrpultintern 02",
  [0x0039] = "Fahrpultintern 03",
  [0x003A] = "Fahrpultintern 04",
  [0x003B] = "Fahrpultintern 05",
  [0x003C] = "Fahrpultintern 06",
  [0x003D] = "Fahrpultintern 07",
  [0x003E] = "Fahrpultintern 08",
  [0x003F] = "Fahrpultintern 09",
  [0x0040] = "Fahrpultintern 10",
  [0x0041] = "Fahrpultintern 11",
  [0x0042] = "Fahrpultintern 12",
  [0x0043] = "Fahrpultintern 13",
  [0x0044] = "Fahrpultintern 14",
  [0x0045] = "Fahrpultintern 15",
  [0x0046] = "Fahrpultintern 16",
  [0x0047] = "Fahrpultintern 17",
  [0x0048] = "Fahrpultintern 18",
  [0x0049] = "Fahrpultintern 19",
  [0x004A] = "Fahrpultintern 20",
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
  [0x0065] = "Status Zugbeeinflussung",
  [0x0066] = "Status Türen",
  [0x0067] = "Fahrpultintern 21",
  [0x0068] = "Fahrpultintern 22",
  [0x0069] = "Fahrpultintern 23",
  [0x006A] = "Fahrpultintern 24",
  [0x006B] = "Fahrpultintern 25",
  [0x006C] = "Fahrpultintern 26",
  [0x006D] = "Fahrpultintern 27",
  [0x006E] = "Fahrpultintern 28",
  [0x006F] = "Fahrpultintern 29",
  [0x0070] = "Fahrpultintern 30",
  [0x0071] = "Fahrpultintern 31",
  [0x0072] = "Fahrpultintern 32",
  [0x0073] = "Fahrpultintern 33",
  [0x0074] = "Fahrpultintern 34",
  [0x0075] = "Fahrpultintern 35",
  [0x0076] = "Fahrpultintern 36",
  [0x0077] = "Fahrpultintern 37",
  [0x0078] = "Fahrpultintern 38",
  [0x0079] = "Fahrpultintern 39",
  [0x007A] = "Fahrpultintern 40",
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
  [0x0095] = "Fahrzeugintern 01",
  [0x0096] = "Fahrzeugintern 02",
  [0x0097] = "Fahrzeugintern 03",
  [0x0098] = "Fahrzeugintern 04",
  [0x0099] = "Fahrzeugintern 05",
  [0x009A] = "Fahrzeugintern 06",
  [0x009B] = "Fahrzeugintern 07",
  [0x009C] = "Fahrzeugintern 08",
  [0x009D] = "Fahrzeugintern 09",
  [0x009E] = "Fahrzeugintern 10",
  [0x009F] = "Fahrzeugintern 11",
  [0x00A0] = "Fahrzeugintern 12",
  [0x00A1] = "Fahrzeugintern 13",
  [0x00A2] = "Fahrzeugintern 14",
  [0x00A3] = "Fahrzeugintern 15",
  [0x00A4] = "Fahrzeugintern 16",
  [0x00A5] = "Fahrzeugintern 17",
  [0x00A6] = "Fahrzeugintern 18",
  [0x00A7] = "Fahrzeugintern 19",
  [0x00A8] = "Fahrzeugintern 20",
}

aus_an = {
  [0] = "aus",
  [1] = "an",
}

aus_dauerlicht_blinkend = {
  [0] = "aus",
  [1] = "Dauerlicht",
  [2] = "blinkend",
}

tastaturzuordnungen = {
  [0x00] = "Keine Tastaturbedienung",
  [0x01] = "Fahrschalter",
  [0x02] = "Dynamische Bremse",
  [0x03] = "AFB",
  [0x04] = "Führerbremsventil",
  [0x05] = "Zusatzbremsventil",
  [0x06] = "Gang",
  [0x07] = "Richtungsschalter",
  [0x08] = "Stufenschalter",
  [0x09] = "Sander",
  [0x0A] = "Türen",
  [0x0B] = "Licht",
  [0x0C] = "Pfeife",
  [0x0D] = "Glocke",
  [0x0E] = "Lüfter",
  [0x0F] = "Zugbeeinflussung",
  [0x10] = "Sifa",
  [0x11] = "Hauptschalter",
  [0x12] = "Gruppenschalter",
  [0x13] = "Schleuderschutz",
  [0x14] = "Mg-Bremse",
  [0x15] = "Lokbremse entlüften",
  [0x16] = "Individuell 01",
  [0x17] = "Individuell 02",
  [0x18] = "Individuell 03",
  [0x19] = "Individuell 04",
  [0x1A] = "Individuell 05",
  [0x1B] = "Individuell 06",
  [0x1C] = "Individuell 07",
  [0x1D] = "Individuell 08",
  [0x1E] = "Individuell 09",
  [0x1F] = "Individuell 10",
  [0x20] = "Individuell 11",
  [0x21] = "Individuell 12",
  [0x22] = "Individuell 13",
  [0x23] = "Individuell 14",
  [0x24] = "Individuell 15",
  [0x25] = "Individuell 16",
  [0x26] = "Individuell 17",
  [0x27] = "Individuell 18",
  [0x28] = "Individuell 19",
  [0x29] = "Individuell 20",
  [0x2A] = "Programmsteuerung",
  [0x2B] = "Stromabnehmer",
  [0x2C] = "Führerstandssicht",
  [0x2D] = "Luftpresser aus",
  [0x2E] = "Zugfunk",
  [0x2F] = "LZB",
  [0x30] = "Individuell 21",
  [0x31] = "Individuell 22",
  [0x32] = "Individuell 23",
  [0x33] = "Individuell 24",
  [0x34] = "Individuell 25",
  [0x35] = "Individuell 26",
  [0x36] = "Individuell 27",
  [0x37] = "Individuell 28",
  [0x38] = "Individuell 29",
  [0x39] = "Individuell 30",
  [0x3A] = "Individuell 31",
  [0x3B] = "Individuell 32",
  [0x3C] = "Individuell 33",
  [0x3D] = "Individuell 34",
  [0x3E] = "Individuell 35",
  [0x3F] = "Individuell 36",
  [0x40] = "Individuell 37",
  [0x41] = "Individuell 38",
  [0x42] = "Individuell 39",
  [0x43] = "Individuell 40",
  [0x44] = "Notaus",
  [0x45] = "Federspeicherbremse",
  [0x46] = "Batterie-Hauptschalter aus",
  [0x47] = "NBÜ",
  [0x48] = "Bremsprobefunktion",
  [0x49] = "Leistung aus",
  [0x4A] = "Fahrzeugintern 01",
  [0x4B] = "Fahrzeugintern 02",
  [0x4C] = "Fahrzeugintern 03",
  [0x4D] = "Fahrzeugintern 04",
  [0x4E] = "Fahrzeugintern 05",
  [0x4F] = "Fahrzeugintern 06",
  [0x50] = "Fahrzeugintern 07",
  [0x51] = "Fahrzeugintern 08",
  [0x52] = "Fahrzeugintern 09",
  [0x53] = "Fahrzeugintern 10",
  [0x54] = "Fahrzeugintern 11",
  [0x55] = "Fahrzeugintern 12",
  [0x56] = "Fahrzeugintern 13",
  [0x57] = "Fahrzeugintern 14",
  [0x58] = "Fahrzeugintern 15",
  [0x59] = "Fahrzeugintern 16",
  [0x5A] = "Fahrzeugintern 17",
  [0x5B] = "Fahrzeugintern 18",
  [0x5C] = "Fahrzeugintern 19",
  [0x5D] = "Fahrzeugintern 20",
}

tastaturkommandos = {
  [0x00] = "Unbestimmt",
  [0x01] = "FahrschalterAuf_Down",
  [0x02] = "FahrschalterAuf_Up",
  [0x03] = "FahrschalterAb_Down",
  [0x04] = "FahrschalterAb_Up",
  [0x05] = "FahrschalterGrundstellung",
  [0x06] = "FahrschalterEinAus_Down",
  [0x07] = "FahrschalterEinAus_Up",
  [0x08] = "DynBremseAuf_Down",
  [0x09] = "DynBremseAuf_Up",
  [0x0A] = "DynBremseAb_Down",
  [0x0B] = "DynBremseAb_Up",
  [0x0C] = "DynBremseGrundstellung",
  [0x0D] = "DynBremseEinAus_Down",
  [0x0E] = "DynBremseEinAus_Up",
  [0x0F] = "AFBAuf_Down",
  [0x10] = "AFBAuf_Up",
  [0x11] = "AFBAb_Down",
  [0x12] = "AFBAb_Up",
  [0x13] = "AFBGrundstellung",
  [0x14] = "AFBEinAus_Down",
  [0x15] = "AFBEinAus_Up",
  [0x16] = "GangAuf_Down",
  [0x17] = "GangAuf_Up",
  [0x18] = "GangAb_Down",
  [0x19] = "GangAb_Up",
  [0x1A] = "GangGrundstellung",
  [0x1B] = "FbvAuf_Down",
  [0x1C] = "FbvAuf_Up",
  [0x1D] = "FbvAb_Down",
  [0x1E] = "FbvAb_Up",
  [0x1F] = "Angleicher_Down",
  [0x20] = "Angleicher_Up",
  [0x21] = "ZbvAuf_Down",
  [0x22] = "ZbvAuf_Up",
  [0x23] = "ZbvAb_Down",
  [0x24] = "ZbvAb_Up",
  [0x25] = "Mg_Down",
  [0x26] = "Mg_Up",
  [0x27] = "RischaAuf_Down",
  [0x28] = "RischaAuf_Up",
  [0x29] = "RischaAb_Down",
  [0x2A] = "RischaAb_Up",
  [0x2B] = "StufenschalterAuf_Down",
  [0x2C] = "StufenschalterAuf_up",
  [0x2D] = "StufenschalterAb_Down",
  [0x2E] = "StufenschalterAb_Up",
  [0x2F] = "Sand_Down",
  [0x30] = "Sand_Up",
  [0x31] = "Schleuderschutz_Down",
  [0x32] = "Schleuderschutz_Up",
  [0x33] = "PZBWachsam_Down",
  [0x34] = "PZBWachsam_Up",
  [0x35] = "PZBFrei_Down",
  [0x36] = "PZBFrei_Up",
  [0x37] = "PZBBefehl_Down",
  [0x38] = "PZBBefehl_Up",
  [0x39] = "Sifa_Down",
  [0x3A] = "Sifa_Up",
  [0x3B] = "TuerenTaster_Down",
  [0x3C] = "TuerenTaster_Up",
  [0x3D] = "TuerenLi_Down",
  [0x3E] = "TuerenLi_Up",
  [0x3F] = "TuerenRe_Down",
  [0x40] = "TuerenRe_Up",
  [0x41] = "TuerenZu_Down",
  [0x42] = "TuerenZu_Up",
  [0x43] = "Licht_Down",
  [0x44] = "Licht_Up",
  [0x45] = "Pfeife_Down",
  [0x46] = "Pfeife_Up",
  [0x47] = "Glocke_Down",
  [0x48] = "Glocke_Up",
  [0x49] = "Luefter_Down",
  [0x4A] = "Luefter_Up",
  [0x4B] = "MotorAuf_Down",
  [0x4C] = "MotorAuf_Up",
  [0x4D] = "MotorAb_Down",
  [0x4E] = "MotorAb_Up",
  [0x4F] = "HauptschalterEin_Down",
  [0x50] = "HauptschalterEin_Up",
  [0x51] = "HauptschalterAus_Down",
  [0x52] = "HauptschalterAus_Up",
  [0x53] = "SAAuf_Down",
  [0x54] = "SAAuf_Up",
  [0x55] = "SAAb_Down",
  [0x56] = "SAAb_Up",
  [0x57] = "Fst1_Down",
  [0x58] = "Fst1_Up",
  [0x59] = "Fst2_Down",
  [0x5A] = "Fst2_Up",
  [0x5B] = "Fst3_Down",
  [0x5C] = "Fst3_Up",
  [0x5D] = "Fst4_Down",
  [0x5E] = "Fst4_Up",
  [0x5F] = "LuftpresserAus_Down",
  [0x60] = "LuftpresserAus_Up",
  [0x61] = "FunkGabel_Down",
  [0x62] = "FunkGabel_Up",
  [0x63] = "FunkSprechknopf_Down",
  [0x64] = "FunkSprechknopf_Up",
  [0x65] = "LZB_G_Down",
  [0x66] = "LZB_G_Up",
  [0x67] = "LZB_Stoer_Down",
  [0x68] = "LZB_Stoer_Up",
  [0x69] = "LZB_Nothalt_Down",
  [0x6A] = "LZB_Nothalt_Up",
  [0x6B] = "Nothalt_Down",
  [0x6C] = "Nothalt_Up",
  [0x6D] = "FederspeicherAuf_Down",
  [0x6E] = "FederspeicherAuf_Up",
  [0x6F] = "FederspeicherAb_Down",
  [0x70] = "FederspeicherAb_Up",
  [0x71] = "BatterieHSAusAuf_Down",
  [0x72] = "BatterieHSAusAuf_Up",
  [0x73] = "BatterieHSAusAb_Down",
  [0x74] = "BatterieHSAusAb_Up",
  [0x75] = "NBUeAus_Down",
  [0x76] = "NBUeAus_Up",
  [0x77] = "NBUeQuittierung_Down",
  [0x78] = "NBUeQuittierung_Up",
  [0x79] = "NBUeTest_Down",
  [0x7A] = "NBUeTest_Up",
  [0x7B] = "Bremsprobe_Down",
  [0x7C] = "Bremsprobe_Down",
  [0x7D] = "LeistungAus_Down",
  [0x7E] = "LeistungAus_Up",
  [0x7F] = "ETCSQuittieren_Down",
  [0x80] = "ETCSQuittieren_Up",
}

tastaturaktionen = {
  [0x00] = "Default",
  [0x01] = "Down",
  [0x02] = "Up",
  [0x03] = "Auf_Down",
  [0x04] = "Auf_Up",
  [0x05] = "Ab_Down",
  [0x06] = "Ab_Up",
  [0x07] = "Absolut",
  [0x08] = "Absolut1000er",
}

kombischalterfunktionen = {
  [0x00] = "Nichts",
  [0x01] = "Fahrstufe",
  [0x02] = "Fahrstufe Schnellaus",
  [0x03] = "Fahrstufe aufschalten",
  [0x04] = "Fahrstufe konstant",
  [0x05] = "Fahrstufe abschalten",
  [0x06] = "Dyn Bremse Stufe",
  [0x07] = "Dyn Bremse auf 0",
  [0x08] = "Dyn Bremse aufschalten",
  [0x09] = "Dyn Bremse konstant",
  [0x0A] = "Dyn Bremse abschalten",
  [0x0B] = "AFB",
  [0x0C] = "AFB 0 km/h",
  [0x0D] = "AFB auf",
  [0x0E] = "AFB ab",
  [0x0F] = "AFB ein/aus",
  [0x10] = "Zugkraft absolut",
  [0x11] = "Zugkraft Schnellaus",
  [0x12] = "Zugkraft (abs.) aufschalten",
  [0x13] = "Zugkraft (abs.) konstant",
  [0x14] = "Zugkraft (abs.) abschalten",
  [0x15] = "Hll Füllen",
  [0x16] = "Hll feste Stufe",
  [0x17] = "Hll Abschluss",
  [0x18] = "Hll Mittel",
  [0x19] = "Hll Schnellbremsung",
  [0x1A] = "Angleicher",
  [0x1B] = "Zbv Lösen",
  [0x1C] = "Zbv Mittel",
  [0x1D] = "Zbv Bremsen",
  [0x1E] = "Gangwahl",
  [0x1F] = "Gangwahl 0",
  [0x20] = "Gangwahl Auf",
  [0x21] = "Gangwahl Fahren",
  [0x22] = "Gangwahl Ab",
  [0x23] = "Rischa V",
  [0x24] = "Rischa M",
  [0x25] = "Rischa 0",
  [0x26] = "Rischa R",
  [0x27] = "Stufenschalter LG",
  [0x28] = "Stufenschalter 0",
  [0x29] = "Stufenschalter SG",
  [0x2A] = "Gruppenschalter stop",
  [0x2B] = "Gruppenschalter aus",
  [0x2C] = "Gruppenschalter ein",
  [0x2D] = "Gruppenschalter start",
  [0x2E] = "Stromabnehmer ab",
  [0x2F] = "Stromabnehmer null",
  [0x30] = "Stromabnehmer auf",
  [0x31] = "Hauptschalter aus",
  [0x32] = "Hauptschalter null",
  [0x33] = "Hauptschalter ein",
  [0x34] = "Mg-Bremse",
  [0x35] = "Sanden",
  [0x36] = "ohne Funktion",
  [0x37] = "ohne Funktion",
  [0x38] = "Lokbremse entlüften",
  [0x39] = "Lüfter",
  [0x3A] = "Fahrpultintern 01",
  [0x3B] = "Fahrpultintern 02",
  [0x3C] = "Fahrpultintern 03",
  [0x3D] = "Fahrpultintern 04",
  [0x3E] = "Fahrpultintern 05",
  [0x3F] = "Fahrpultintern 06",
  [0x40] = "Fahrpultintern 07",
  [0x41] = "Fahrpultintern 08",
  [0x42] = "Fahrpultintern 09",
  [0x43] = "Fahrpultintern 10",
  [0x44] = "Fahrpultintern 11",
  [0x45] = "Fahrpultintern 12",
  [0x46] = "Fahrpultintern 13",
  [0x47] = "Fahrpultintern 14",
  [0x48] = "Fahrpultintern 15",
  [0x49] = "Fahrpultintern 16",
  [0x4A] = "Fahrpultintern 17",
  [0x4B] = "Fahrpultintern 18",
  [0x4C] = "Fahrpultintern 19",
  [0x4D] = "Fahrpultintern 20",
  [0x4E] = "Wandlerfüllung",
  [0x4F] = "Luftpresser aus",
  [0x50] = "Notaus",
  [0x51] = "Fahrpultintern 21",
  [0x52] = "Fahrpultintern 22",
  [0x53] = "Fahrpultintern 23",
  [0x54] = "Fahrpultintern 24",
  [0x55] = "Fahrpultintern 25",
  [0x56] = "Fahrpultintern 26",
  [0x57] = "Fahrpultintern 27",
  [0x58] = "Fahrpultintern 28",
  [0x59] = "Fahrpultintern 29",
  [0x5A] = "Fahrpultintern 10",
  [0x5B] = "Fahrpultintern 11",
  [0x5C] = "Fahrpultintern 12",
  [0x5D] = "Fahrpultintern 13",
  [0x5E] = "Fahrpultintern 14",
  [0x5F] = "Fahrpultintern 15",
  [0x60] = "Fahrpultintern 16",
  [0x61] = "Fahrpultintern 17",
  [0x62] = "Fahrpultintern 18",
  [0x63] = "Fahrpultintern 19",
  [0x64] = "Fahrpultintern 40",
  [0x65] = "Federspeicher anlegen",
  [0x66] = "Federspeicher null",
  [0x67] = "Federspeicher lösen",
  [0x68] = "Federspeicher umschalten",
  [0x69] = "Batterie-Hauptschalter aus",
  [0x6A] = "Batterie-Hauptschalter null",
  [0x6B] = "Batterie-Hauptschalter ein",
  [0x6C] = "Fahrschalter deaktivieren",
  [0x6D] = "Dynamische Bremse deaktivieren",
  [0x6E] = "Computerbremse Bremskraft",
  [0x6F] = "Computerbremse aufschalten",
  [0x70] = "Computerbremse konstant",
  [0x71] = "Computerbremse abschalten",
  [0x72] = "Fahrzeugintern 01",
  [0x73] = "Fahrzeugintern 02",
  [0x74] = "Fahrzeugintern 03",
  [0x75] = "Fahrzeugintern 04",
  [0x76] = "Fahrzeugintern 05",
  [0x77] = "Fahrzeugintern 06",
  [0x78] = "Fahrzeugintern 07",
  [0x79] = "Fahrzeugintern 08",
  [0x7A] = "Fahrzeugintern 09",
  [0x7B] = "Fahrzeugintern 10",
  [0x7C] = "Fahrzeugintern 11",
  [0x7D] = "Fahrzeugintern 12",
  [0x7E] = "Fahrzeugintern 13",
  [0x7F] = "Fahrzeugintern 14",
  [0x80] = "Fahrzeugintern 15",
  [0x81] = "Fahrzeugintern 16",
  [0x82] = "Fahrzeugintern 17",
  [0x83] = "Fahrzeugintern 18",
  [0x84] = "Fahrzeugintern 19",
  [0x85] = "Fahrzeugintern 20",
}

indusi_einstellungen = {
  name = "System aus der Indusi-Familie - Einstellungen",
  attributes = {
    [0x0001] = { typ = "byte", name = "Zugart", enum = {
      [0] = "Automatisch bestimmen",  -- Befehl INPUT
      [1] = "Zugart muss noch bestimmt werden",
      [2] = "U",
      [3] = "M",
      [4] = "O",
      [5] = "S-Bahn-Modus",
    }},
    [0x0002] = { typ = "string", name = "Tf-Nummer", },
    [0x0003] = { typ = "string", name = "Zugnummer", },
    [0x0007] = { typ = "byte", name = "Hauptschalter", enum = {
      [1] = "Indusi ausgeschaltet",
      [2] = "Indusi eingeschaltet",
    }},
    [0x0008] = { typ = "byte", name = "Störschalter", enum = {
      [1] = "Indusi abgeschaltet",
      [2] = "Indusi eingeschaltet",
    }},
    [0x0009] = { typ = "byte", name = "Störschalter", enum = {
      [1] = "LZB abgeschaltet",
      [2] = "LZB eingeschaltet",
    }},
    [0x000A] = { typ = "byte", name = "Luftabsperrhahn", enum = {
      [1] = "abgesperrt",
      [2] = "offen",
    }},
  },
  nodes = {
    [0x0004] = {
      name = "Grunddaten",
      attributes = {
        [0x0001] = { typ = "word", name = "BRH-Wert (Bremshundertstel)", },
        [0x0002] = { typ = "word", name = "BRA-Wert (Bremsart)", },
        [0x0003] = { typ = "word", name = "ZL-Wert (Zuglänge) in m", },
        [0x0004] = { typ = "word", name = "VMZ-Wert (Höchstgeschwindigkeit) in km/h", },
        [0x0005] = { typ = "byte", name = "Zugehörige Zugart", enum = {
          [1] = "Zugart muss noch bestimmt werden",
          [2] = "U",
          [3] = "M",
          [4] = "O",
        }},
      },
    },
    [0x0005] = {
      name = "Ersatzzugdaten",
      attributes = {
        [0x0001] = { typ = "word", name = "BRH-Wert (Bremshundertstel)", },
        [0x0002] = { typ = "word", name = "BRA-Wert (Bremsart)", },
        [0x0003] = { typ = "word", name = "ZL-Wert (Zuglänge) in m", },
        [0x0004] = { typ = "word", name = "VMZ-Wert (Höchstgeschwindigkeit) in km/h", },
        [0x0005] = { typ = "byte", name = "Zugehörige Zugart", enum = {
          [1] = "Zugart muss noch bestimmt werden",
          [2] = "U",
          [3] = "M",
          [4] = "O",
        }},
      },
    },
    [0x0006] = {
      name = "Aktive Zugdaten",
      attributes = {
        [0x0001] = { typ = "word", name = "BRH-Wert (Bremshundertstel)", },
        [0x0002] = { typ = "word", name = "BRA-Wert (Bremsart)", },
        [0x0003] = { typ = "word", name = "ZL-Wert (Zuglänge) in m", },
        [0x0004] = { typ = "word", name = "VMZ-Wert (Höchstgeschwindigkeit) in km/h", },
        [0x0005] = { typ = "byte", name = "Zugehörige Zugart", enum = {
          [1] = "Zugart muss noch bestimmt werden",
          [2] = "U",
          [3] = "M",
          [4] = "O",
        }},
        [0x0006] = { typ = "byte", name = "Modus", enum = {
          [4] = "Grunddaten",
          [5] = "Ersatzzugdaten",
          [6] = "Normalbetrieb",
        }},
      },
    },
  },
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
            other = { name = "Physikalische Größe", name_enum = phys_quantities, typ = "single" },
          },
          nodes = {
            [0x0022] = {
              name = "Status Notbremssystem",
              nodes = {
                [0x0001] = { typ = "string", name = "Bauart Notbremssystem", },
                [0x0002] = { typ = "byte", name = "Status Notbremssystem", enum = {
                  [0] = "NBÜ aus",
                  [1] = "NBÜ bereit",
                  [2] = "Notbremse gezogen",
                  [3] = "Notbremse wirkt (NBÜ bereit)",
                  [4] = "NBÜ durch Lokführer aktiviert, Notbremse überbrückt",
                  [5] = "Notbremse wirkt (NBÜ aus)",
                  [6] = "NBÜ ist daueraktiviert, Notbremse ohne jede Wirkung",
                }},
                [0x0003] = { typ = "byte", name = "Melder „System bereit“", enum = aus_an },
                [0x0004] = { typ = "byte", name = "Melder „Notbremsung“", enum = aus_an },
                [0x0005] = { typ = "byte", name = "Testmodus", enum = {
                  [0] = "Normalbetrieb",
                  [1] = "Testmodus aktiv",
                }},
              },
            },
            [0x0064] = {
              name = "Status Sifa",
              attributes = {
                [0x0001] = { typ = "string", name = "Bauart Sifasystem", },
                [0x0002] = { typ = "byte", name = "Sifa-Leuchtmelder", enum = aus_an, },
                [0x0003] = { typ = "byte", name = "Status Sifa-Hupe", enum = {
                  [0] = "Aus",
                  [1] = "Warnung",
                  [2] = "Zwangsbremsung",
                }},
                [0x0004] = { typ = "byte", name = "Sifa-Hauptschalter", enum = {
                  [1] = "Sifa ausgeschaltet",
                  [2] = "Sifa eingeschaltet",
                }},
                [0x0005] = { typ = "byte", name = "Sifa-Störschalter", enum = {
                  [1] = "Sifa abgeschaltet",
                  [2] = "Sifa eingeschaltet",
                }},
                [0x0006] = { typ = "byte", name = "Sifa-Luftabsperrhahn", enum = {
                  [1] = "abgesperrt",
                  [2] = "offen",
                }},
              },
            },
            [0x0065] = {
              name = "Status Zugbeeinflussung",
              attributes = {
                [0x0001] = { typ = "string", name = "Bauart Zugbeeinflussungssystem", },
              },
              nodes = {
                [0x0002] = indusi_einstellungen,
                [0x0003] = {
                  name = "System aus der Indusi-Familie - Betriebsdaten",
                  nodes = {
                    [0x000E] = {
                      name = "Ende-Verfahren läuft",
                      attributes = {
                        [0x0001] = { typ = "byte", name = "Status", enum = {
                          [1] = "eingeleitet",
                          [2] = "quittiert",
                        }},
                      },
                    },
                    [0x000F] = { name = "Ersatzauftrag aktiv", },
                    [0x0010] = {
                      name = "Falschfahrauftrag aktiv",
                      attributes = {
                        [0x0001] = { typ = "byte", name = "Status", enum = {
                          [1] = "eingeleitet",
                          [2] = "quittiert/Dunkelschaltung",
                        }},
                      },
                    },
                    [0x0011] = {
                      name = "Vorsichtauftrag aktiv",
                      attributes = {
                        [0x0001] = { typ = "byte", name = "Status", enum = {
                          [1] = "eingeleitet",
                          [2] = "quittiert/Dunkelschaltung",
                          [3] = "Fahrt auf Sicht (V40-Melder Dauerlicht)",
                        }},
                      },
                    },
                    [0x0012] = { name = "Fahrt über LZB-Halt per Befehl", },
                    [0x0013] = {
                      name = "Übertragungsausfall",
                      attributes = {
                        [0x0001] = { typ = "single", name = "Zielgeschwindigkeit in m/s", },
                        [0x0002] = { typ = "word", name = "Status:", enum = {
                          [1] = "eingeleitet",
                          [2] = "Ü blinkt",
                          [3] = "erste Quittierung erfolgt",
                          [4] = "Bedingung für 2. Quittierung gegeben",
                          [5] = "zweite Quittierung erfolgt",
                          [6] = "Ausfall nach verdeckter LZB-Aufnahme (CE)",
                          [7] = "dito, Befehl blinkt",
                        }},
                        [0x0003] = { typ = "single", name = "Zielweg (nur CIR-ELKE)" },
                      },
                    },
                    [0x0014] = {
                      name = "LZB-Nothalt",
                      attributes = {
                        [0x0001] = { typ = "byte", name = "Info", enum = {
                          [1] = "Nothalt empfangen",
                          [2] = "Nothalt überfahren",
                          [3] = "Nothalt aufgehoben",
                        }},
                        [0x0002] = { typ = "byte", name = "Senden", enum = {
                          [1] = "Nothalt wird gesendet",
                        }},
                      },
                    },
                    [0x0015] = {
                      name = "LZB-Rechnerausfall",
                      attributes = {
                        [0x0001] = { typ = "byte", name = "Typ", enum = {
                          [1] = "Alles dunkel",
                          [2] = "Befehlsmelder blinkt nach Rechnerneustart",
                          [3] = "Befehlsmelder Dauerlicht nach Quittierung",
                        }},
                      },
                    },
                    [0x0016] = {
                      name = "LZB-EL-Auftrag",
                      attributes = {
                        [0x0001] = { typ = "byte", name = "Typ", enum = {
                          [1] = "Hauptschalter aus (EL zeigt Dauerlicht)",
                          [2] = "Stromabnehmer senken (EL blinkt)",
                        }},
                      },
                    },
                    [0x0028] = {
                      name = "Funktionsprüfung läuft",
                      nodes = {
                        [0x0001] = { name = "Alle Melder blinken", },
                        [0x0002] = { name = "Anzeige der Führungsgrößen", },
                        [0x0003] = { name = "B ist an, Ü ist aus", },
                        [0x0004] = { name = "Zwangsbremsung aktiv", },
                      },
                    },
                  },
                  attributes = {
                    [0x0002] = { typ = "word", name = "Zustand Zugbeeinflussung", enum = {
                      [1] = "ausgeschaltet",
                      [2] = "abgeschaltet/gestört (1000 Hz blinkt)",
                      [3] = "Hauptluftleitung unter Grenzdruck (1000 Hz blinkt)",
                      [4] = "Aufforderung zur Zugdateneingabe",
                      [5] = "Normalbetrieb",
                      [6] = "Funktionsprüfung",
                    }},
                    [0x0003] = { typ = "word", name = "Zwangsbremsung", enum = {
                      [0] = "keine Zwangsbremsung",
                      [1] = "Wachsam",
                      [2] = "1000 Hz-Prüfung",
                      [3] = "500 Hz-Prüfung",
                      [4] = "2000 Hz",
                      [5] = "Kein Halt nach Befreiung aus Zwangsbremsung",
                      [6] = "Fahrzeug-v-Max überschritten",
                      [7] = "Funktionsprüfung",
                      [8] = "500 Hz nach Befreiung",
                      [9] = "LZB-Halt überfahren",
                      [10] = "LZB-Rechnerausfall",
                      [11] = "LZB-Nothalt überfahren",
                      [12] = "Übertragungsausfall in verdeckter Aufnahme",
                    }},
                    [0x0004] = { typ = "string", name = "Grund der Zwangsbremsung", },
                    [0x0005] = { typ = "byte", name = "Melder 1000 Hz", enum = aus_an, },
                    [0x0006] = { typ = "byte", name = "Zugartmelder U", enum = aus_an, },
                    [0x0007] = { typ = "byte", name = "Zugartmelder M", enum = aus_an, },
                    [0x0008] = { typ = "byte", name = "Zugartmelder O", enum = aus_an, },
                    [0x0009] = { typ = "byte", name = "Indusi-Hupe", enum = {
                      [0] = "aus",
                      [1] = "Hupe",
                      [2] = "Zwangsbemsung",
                    }},
                    [0x000A] = { typ = "byte", name = "Melder 500Hz", enum = aus_an },
                    [0x000B] = { typ = "byte", name = "Melder Befehl", enum = aus_an },
                    [0x000C] = { typ = "byte", name = "PZB90: Zusatzinfo Melderbild", enum = {
                      [0] = "Normalzustand",
                      [1] = "1000 Hz nach 700m",
                      [2] = "Restriktiv",
                      [3] = "Restriktiv + 1000 Hz",
                      [4] = "Restriktiv + 500 Hz",
                      [5] = "Prüfablauf nach LZB-Übertragungsausfall (>0)",
                    }},
                    [0x000D] = { typ = "word", name = "LZB-Zustand:", enum = {
                      [0] = "Keine LZB-Führung",
                      [1] = "Normale Fahrt",
                      [2] = "Nothalt",
                      [3] = "LZB-Halt überfahren",
                      [4] = "Rechnerausfall",
                      [5] = "Nachfahrauftrag",
                      [6] = "Funktionsprüfung",
                    }},
                    [0x0017] = { typ = "byte", name = "Melder H", enum = aus_an, },
                    [0x0018] = { typ = "byte", name = "Melder E40", enum = aus_an, },
                    [0x0019] = { typ = "byte", name = "Melder Ende", enum = aus_an, },
                    [0x001A] = { typ = "byte", name = "Melder B", enum = aus_an, },
                    [0x001B] = { typ = "byte", name = "Melder Ü", enum = aus_an, },
                    [0x001C] = { typ = "byte", name = "Melder G", enum = aus_an, },
                    [0x001D] = { typ = "byte", name = "Melder EL", enum = aus_an, },
                    [0x001E] = { typ = "byte", name = "Melder V40", enum = aus_an, },
                    [0x001F] = { typ = "byte", name = "Melder S", enum = aus_an, },
                    [0x0020] = { typ = "byte", name = "Melder Prüf/Stör", enum = aus_an, },
                    [0x0021] = { typ = "single", name = "Sollgeschwindigkeit in m/s", },
                    [0x0022] = { typ = "single", name = "Zielgeschwindigkeit in m/s (Wert<0 → dunkel)", },
                    [0x0023] = { typ = "single", name = "Zielweg in m (Wert<0 → dunkel)", },
                    [0x0024] = { typ = "byte", name = "Melder G", enum = {
                      [0] = "aus",
                      [1] = "an",
                      [2] = "blinkt",
                    }},
                    [0x0025] = { typ = "byte", name = "Melder Prüf/Stör", enum = {
                      [0] = "aus",
                      [1] = "an",
                      [2] = "blinkt",
                    }},
                    [0x0026] = { typ = "byte", name = "CIR-ELKE-Modus", enum = {
                      [0] = "Normaler Modus aktiv",
                      [1] = "CIR-ELKE-Modus aktiv",
                    }},
                    [0x0027] = { typ = "byte", name = "Anzeigemodus", enum = {
                      [0] = "Normaler Modus",
                      [1] = "Zugdatenanzeige im MFA aktiv",
                    }},
                    [0x0029] = { typ = "byte", name = "Melder Zugart Links (S-Bahn)", enum = aus_an, },
                    [0x002A] = { typ = "byte", name = "Melder Zugart 65 (S-Bahn)", enum = aus_an, },
                    [0x002B] = { typ = "byte", name = "Melder Zugart Rechts (S-Bahn)", enum = aus_an, },
                  },
                },
                [0x0006] = {
                  name = "System aus der ZUB-Familie - Einstellungen",
                  attributes = {
                    [0x0001] = { typ = "word", name = "BRH-Wert (Bremshundertstel", },
                    [0x0003] = { typ = "word", name = "ZL-Wert (Zuglänge) in m", },
                    [0x0004] = { typ = "word", name = "VMZ-Wert (Höchstgeschwindigkeit) in km/h", },
                  },
                },
                [0x0007] = {
                  name = "System aus der ZUB-Familie - Betriebsdaten",
                  attributes = {
                    [0x0001] = { typ = "byte", name = "Melder GNT", enum = aus_an, },
                    [0x0002] = { typ = "byte", name = "Melder GNT Ü", enum = aus_an, },
                    [0x0003] = { typ = "byte", name = "Melder GNT G", enum = aus_an, },
                    [0x0004] = { typ = "byte", name = "Melder GNT S", enum = aus_an, },
                    [0x0005] = { typ = "byte", name = "Melder GNT Gst ein", enum = aus_an, },
                    [0x0006] = { typ = "byte", name = "Melder GNT Gst Stör", enum = aus_an, },
                    [0x0007] = { typ = "byte", name = "Status Melder GNT Ü", enum = aus_dauerlicht_blinkend, },
                    [0x0008] = { typ = "byte", name = "Status Melder GNT G", enum = aus_dauerlicht_blinkend, },
                    [0x0009] = { typ = "byte", name = "Status Melder GNT S", enum = aus_dauerlicht_blinkend, },
                    [0x000A] = { typ = "word", name = "Zwangsbremsung", enum = {
                      [0] = "keine Zwangsbremsung",
                      [1] = "Wachsam",
                      [2] = "1000 Hz-Prüfung",
                      [3] = "500 Hz-Prüfung",
                      [4] = "2000 Hz",
                      [5] = "Kein Halt nach Befreiung aus Zwangsbremsung",
                      [6] = "Fahrzeug-v-Max überschritten",
                      [7] = "Funktionsprüfung",
                      [8] = "500 Hz nach Befreiung",
                      [9] = "LZB-Halt überfahren",
                      [10] = "LZB-Rechnerausfall",
                      [11] = "LZB-Nothalt überfahren",
                      [12] = "Übertragungsausfall in verdeckter Aufnahme",
                    }},
                    [0x000B] = { typ = "byte", name = "Betriebszwangsbremsung aktiv" },
                  },
                },
              },
            },
            [0x0066] = {
              name = "Status Türsystem",
              attributes = {
                [0x0001] = { typ = "string", name = "Bezeichnung des Systems als Text", },
                [0x0002] = { typ = "byte", name = "Status linke Seite", enum = {
                  [0] = "zu",
                  [1] = "öffnend",
                  [2] = "offen",
                  [3] = "Fahrgastwechsel abgeschlossen",
                  [4] = "schließend",
                  [5] = "gestört",
                  [6] = "blockiert",
                }},
                [0x0003] = { typ = "byte", name = "Status rechte Seite", enum = {
                  [0] = "zu",
                  [1] = "öffnend",
                  [2] = "offen",
                  [3] = "Fahrgastwechsel abgeschlossen",
                  [4] = "schließend",
                  [5] = "gestört",
                  [6] = "blockiert",
                }},
                [0x0004] = { typ = "byte", name = "Traktionssperre", enum = {
                  [1] = "Traktionssperre aktiv",
                }},
                [0x0005] = { typ = "byte", name = "Freigabestatus (Seitenwahlschalter)", enum = {
                  [0] = "Zu",
                  [1] = "Links",
                  [2] = "Rechts",
                  [3] = "Beide",
                }},
                [0x0006] = { typ = "byte", name = "Melder links", enum = aus_an, },
                [0x0007] = { typ = "byte", name = "Melder rechts", enum = aus_an, },
                [0x0008] = { typ = "byte", name = "Melder links", enum = {
                  [0] = "Aus (Türen auf)",
                  [1] = "Dauerlicht (Türen zu)",
                  [2] = "Blinkend (Türen schließend)",
                }},
                [0x0009] = { typ = "byte", name = "Melder rechts", enum = {
                  [0] = "Aus (Türen auf)",
                  [1] = "Dauerlicht (Türen zu)",
                  [2] = "Blinkend (Türen schließend)",
                }},
                [0x000A] = { typ = "byte", name = "Melder „(Zwangs)schließen“", enum = aus_an, },
                [0x000B] = { typ = "byte", name = "Status Melder „(Zwangs)schließen“", enum = aus_dauerlicht_blinkend },
                [0x000C] = { typ = "byte", name = "Melder „Türen links+rechts“", enum = aus_an, },
                [0x000D] = { typ = "byte", name = "Status Melder „Türen links+rechts“", enum = aus_dauerlicht_blinkend },
                [0x000E] = { typ = "byte", name = "Melder „Zentrales Öffnen links“", enum = aus_an, },
                [0x000F] = { typ = "byte", name = "Melder „Zentrales Öffnen rechts“", enum = aus_an, },
                [0x0010] = { typ = "byte", name = "Status Melder „Zentrales Öffnen links“", enum = aus_dauerlicht_blinkend, },
                [0x0011] = { typ = "byte", name = "Status Melder „Zentrales Öffnen rechts“", enum = aus_dauerlicht_blinkend, },
                [0x0012] = { typ = "byte", name = "Melder „Grünschleife“", enum = aus_an, },
              },
            },
            [0x008D] = {
              name = "Status Fahrzeug",
              attributes = {
                [0x0001] = { typ = "word", name = "Grund Nullstellungszwang", enum = {
                  [0] = "Nichts",
                  [1] = "Niedriger Hauptluftleitungsdruck",
                  [2] = "Dynamische Bremse",
                  [3] = "Traktionssperre",
                }},
                [0x0002] = { typ = "word", name = "Grund Traktionssperre", enum = {
                  [0] = "Nichts",
                  [1] = "Federspeicherbremse aktiv",
                  [2] = "Türsystem",
                  [3] = "Bremsprobe läuft",
                }},
                [0x0003] = { typ = "byte", name = "Status Fahrschalter", enum = {
                  [1] = "Deaktiviert",
                  [2] = "Normalzustand",
                }},
                [0x0004] = { typ = "byte", name = "Status Dynamische Bremse", enum = {
                  [1] = "Deaktiviert",
                  [2] = "Normalzustand",
                }},
              },
            },
            [0x008E] = {
              name = "Status Zugverband",
              nodes = {
                [0x0001] = {
                  name = "Fahrzeug",
                  nodes = {
                    [0x0004] = {
                      name = "Vorhandenes Zugbeeinflussungssystem",
                      attributes = {

                        [0x0001] = { typ = "string", name = "Bezeichnung Zugbeeinflussungssystem", },
                      },
                    },
                  },
                  attributes = {
                    [0x0001] = { typ = "string", name = "Fahrzeugdateiname", },
                    [0x0002] = { typ = "string", name = "Beschreibung", },
                    [0x0003] = { typ = "word", name = "Bremsstellung", enum = {
                      [0] = "keine/undefiniert",
                      [1] = "G",
                      [2] = "P",
                      [3] = "P+Mg",
                      [4] = "R",
                      [5] = "R+Mg",
                    }},
                    [0x0005] = { typ = "single", name = "Fahrzeughöchstgeschwindigkeit in m/s", },
                  },
                },
              },
            },
            [0x0092] = {
              name = "Status Weichen",
              nodes = {
                [0x0001] = {
                  name = "Weiche",
                  attributes = {
                    [0x0001] = { typ = "string", name = "Weichen-Bezeichnung", },
                    [0x0002] = { typ = "int", name = "Bauart", enum = {
                      [0] = "undefiniert",
                      [1] = "Handweiche rechts",
                      [2] = "Handweiche links",
                      [3] = "EOW rechts",
                      [4] = "EOW links",
                      [5] = "Hand-DKW in Grundstellung nach links",
                      [6] = "Hand-DKW in Grundstellung nach rechts",
                      [7] = "EOW-DKW in Grundstellung nach links",
                      [8] = "EOW-DKW in Grundstellung nach rechts",
                      [9] = "Hand-Gleissperre",
                      [10] = "EOW-Gleissperre",
                      [11] = "HET",
                      [12] = "UT",
                      [13] = "ZLB",
                    }},
                    [0x0003] = { typ = "int", name = "Typ", enum = {
                      [0] = "undefiniert",
                      [1] = "Ohne Grundstellung",
                      [2] = "Grundstellung rechts (weiß)",
                      [3] = "Grundstellung links (weiß)",
                      [4] = "Grundstellung rechts (gelb)",
                      [5] = "Grundstellung links (gelb)",
                    }},
                    [0x0004] = { typ = "byte", name = "Aktuelle Lage", enum = {
                      [0] = "Zusi-Grundstellung spitz befahren",
                      [1] = "Nicht in Grundstellung spitz befahren",
                      [2] = "Zusi-Grundstellung stumpf befahren",
                      [3] = "Nicht in Grundstellung stumpf befahren",
                    }},
                    [0x0005] = { typ = "byte", name = "Fahrtrichtung", enum = {
                      [0] = "undefiniert",
                      [1] = "spitz befahren",
                      [2] = "stumpf befahren",
                    }},
                    [0x0006] = { typ = "byte", name = "Umlaufmodus Stumpfbefahrung", enum = {
                      [0] = "undefiniert",
                      [1] = "Weiche läuft automatisch um",
                      [2] = "Weiche muss gestellt werden",
                    }},
                  }
                }
              }
            }
          },
        },
        [0x000B] = {
          name = "Befehl DATA_OPERATION – Führerstandsbedienung",
          nodes = {
            [0x0001] = {
              name = "Betätigungsvorgang",
              attributes = {
                [0x0001] = { typ = "word", name = "Tastaturzuordnung", enum = tastaturzuordnungen },
                [0x0002] = { typ = "word", name = "Tastaturkommando", enum = tastaturkommandos },
                [0x0003] = { typ = "word", name = "Tastaturaktion", enum = tastaturaktionen },
                [0x0004] = { typ = "smallint", name = "Schalterposition", },
                [0x0005] = { typ = "single", name = "Parameter für spezielle Funktionen", },
              },
            },
            [0x0002] = {
              name = "Kombischalter-Hebelposition",
              attributes = {
                [0x0001] = { typ = "string", name = "Name des Kombischalters", },
                [0x0003] = { typ = "smallint", name = "Aktuelle Raste (Nr.)", },
                [0x0004] = { typ = "smallint", name = "Nr. der Mittelstellung", },
                [0x0005] = { typ = "smallint", name = "Maximale Rastennummer", },
              },
              nodes = {
                [0x0002] = {
                  name = "Funktion",
                  attributes = {
                    [0x0001] = { typ = "word", name = "Kombischalterfunktion", enum = kombischalterfunktionen },
                    [0x0002] = { typ = "single", name = "Parameter", },
                  },
                },
              },
            },
            [0x0003] = {
              name = "Mausklick auf ZusiDisplay-Melder",
              attributes = {
                [0x0001] = { typ = "string", name = "Name des Melders", },
                [0x0002] = { typ = "byte", name = "Klicktyp", enum = {
                  [0] = "Klickanfang",
                  [1] = "Klickende",
                }},
                [0x0003] = { typ = "single", name = "x-Koordinate (0..1)", },
                [0x0004] = { typ = "single", name = "y-Koordinate (0..1)", },
              },
            },
          },
        },
        [0x000C] = {
          name = "Befehl DATA_PROG - Programmdaten",
          attributes = {
            [0x0001] = { typ = "string", name = "Aktuelle Zugdatei", },
            [0x0002] = { typ = "string", name = "Aktuelle Zugnummer", },
            [0x0003] = { typ = "byte", name = "Status Ladepause", enum = {
              [0] = "Ende Ladepause (Start der Simulation)",
            }},
            [0x0004] = { typ = "string", name = "Transfer der Buchfahrplandatei", },
          },
        },
        [0x010A] = {
          name = "Befehl INPUT",
          nodes = {
            [0x0001] = {
              name = "Tastatureingabe",
              attributes = {
                [0x0001] = { typ = "word", name = "Tastaturzuordnung", enum = tastaturzuordnungen, },
                [0x0002] = { typ = "word", name = "Tastaturkommando", enum = tastaturkommandos, },
                [0x0003] = { typ = "word", name = "Tastaturaktion", enum = tastaturaktionen, },
                [0x0004] = { typ = "smallint", name = "Schalterposition", },
                [0x0005] = { typ = "single", name = "Parameter für spezielle Funktionen", },
              },
            },
            [0x0002] = {
              name = "Zugbeeinflussung einstellen",
              nodes = {
                [0x0002] = indusi_einstellungen,
              },
            },
            [0x0003] = {
              name = "Zugfunk-Status mitteilen",
              attributes = {
                [0x0001] = { typ = "byte", name = "Zugfunk-Status", enum = {
                  [0] = "Keine Funktion",
                  [1] = "Notruf durch den Lokführer gedrückt",
                  [2] = "Notruf durch den Fdl ausgelöst",
                }},
              },
            },
            [0x0004] = {
              name = "Sifa einstellen",
              attributes = {
                [0x0001] = { typ = "byte", name = "Hauptschalter", enum = {
                  [1] = "Sifa ausgeschaltet",
                  [2] = "Sifa eingeschaltet",
                }},
                [0x0002] = { typ = "byte", name = "Störschalter", enum = {
                  [1] = "Sifa abgeschaltet",
                  [2] = "Sifa eingeschaltet",
                }},
                [0x0003] = { typ = "byte", name = "Luftabsperrhahn", enum = {
                  [1] = "abgesperrt",
                  [2] = "offen",
                }},
              }
            },
          }
        },
        [0x010B] = {
          name = "Befehl CONTROL",
          nodes = {
            [0x0001] = {
              name = "Pause",
              attributes = {
                [0x0001] = { typ = "shortint", name = "Pause-Kommando", enum = {
                  [-1] = "umschalten",
                  [0] = "Pause aus",
                  [1] = "Pause an",
                }},
              },
            },
            [0x0002] = {
              name = "Programm-Neustart (aus der laufenden Simulation)",
              attributes = {
                [0x0001] = { typ = "string", name = "Dateiname des Zuges", },
              },
            },
            [0x0003] = {
              name = "Zug starten",
              attributes = {
                [0x0001] = { typ = "string", name = "Dateiname des Zuges relativ zum Zusi-Verzeichnis", },
              },
            },
            [0x0004] = {
              name = "Simulationsende",
            },
            [0x0005] = {
              name = "Fahrplan neu starten",
            },
            [0x0006] = {
              name = "Zug auswählen und starten",
              attributes = {
                [0x0001] = { typ = "string", name = "Zugnummer des Zuges", },
              },
            },
            [0x0007] = {
              name = "Zeitsprung",
              attributes = {
                [0x0001] = { typ = "shortint", name = "Zeitsprung-Kommando", enum = {
                  [-1] = "umschalten",
                  [0] = "Zeitsprung aus",
                  [1] = "Zeitsprung an",
                }},
              },
            },
            [0x0008] = {
              name = "Zeitraffer",
              attributes = {
                [0x0001] = { typ = "shortint", name = "Zeitraffer-Kommando", enum = {
                  [-1] = "umschalten",
                  [0] = "Zeitraffer aus",
                  [1] = "Zeitraffer an",
                }},
              },
            },
          },
        },
        [0x010C] = {
          name = "Befehl GRAPHIC",
          attributes = {
            [0x0001] = { typ = "byte", name = "Grafik-Index", },
            [0x0002] = { typ = "string", name = "Name des Melders", },
            [0x0003] = { typ = "word", name = "Nummer des Bildes", },
            [0x0004] = { typ = "byte", name = "Index der Textur", },
            [0x0005] = { name = "Serialisierte Bitmap-Datei", },
          },
        },
      },
    },
  },
}

-- Parses the content of a single node (and its children) or attribute.
-- and creates a new child node in the specified tree for the parse result.
-- Returns the offset at which the caller is to continue parsing.
-- Throws an out-of-range exception if the buffer does not contain enough data.
function build_tree(buffer, offset, tree, parent_node)
  -- It does not make sense to try and parse a PDU
  -- if we don't have at least one empty node's worth of data
  -- (4 bytes PACKET_LENGTH, 2 bytes ID, 4 bytes END)
  if buffer:len() < 4+2+4 then error("Not enough data in buffer") end

  local startoffset = offset
  while true do
    -- Do not try to assemble more TCP segments into one PDU if we finished reading a node on the top level.
    if startoffset == 0 and offset == buffer:len() then return end

    local length = buffer(offset,4):le_uint()
    offset = offset + 4

    if length == 0x00000000 then
      -- Node start

      -- Early return if there is not yet enough data
      if buffer:len() - offset < 2+4 then error("Not enough data in buffer") end

      local id = buffer(offset,2):le_uint()
      offset = offset + 2

      local node = nil
      if parent_node ~= nil and parent_node.nodes ~= nil then
        node = parent_node.nodes[id]
      end

      local descr = string.format("Node, id = 0x%x", id)
      if node ~= nil then
        descr = descr .. string.format(" [%s]", node.name)
      end

      offset = build_tree(buffer, offset, tree:add(buffer(offset - 4,4), descr), node)
    elseif length == 0xffffffff then
      -- Node end
      tree:set_len(offset - startoffset)
      return offset
    else
      -- Attribute

      -- Early return if there is not yet enough data
      if buffer:len() - offset < length - 2 then error("Not enough data in buffer") end

      local id = buffer(offset,2):le_uint()
      local value = buffer(offset + 2, length - 2)
      local attr = nil

      if parent_node ~= nil and parent_node.attributes ~= nil then
        if parent_node.attributes[id] ~= nil then
          attr = parent_node.attributes[id]
        else
          attr = parent_node.attributes.other
        end
      end

      local descr = string.format("Attribute, id = 0x%X", id)
      if attr ~= nil then
        local name = attr.name
        if attr.name_enum ~= nil and attr.name_enum[id] ~= nil then
          name = attr.name_enum[id]
        end
        descr = descr .. string.format(" [%s]", name)

        local typ = attr.typ
        if (typ == "byte" and length == 1+2) or (typ == "word" and length == 2+2)
            or (typ == "cardinal" and length == 4+2) or (typ == "shortint" and length == 1+2)
            or (typ == "smallint" and length == 2+2) or (typ == "integer" and length == 4+2) then
          local value_decoded
          if typ == "byte" or typ == "word" or typ == "cardinal" then
            value_decoded = value:le_uint()
          else
            value_decoded = value:le_int()
          end
          descr = descr .. string.format(", value: %s = %d", typ, value_decoded)
          if attr.enum ~= nil then
            if attr.enum[value_decoded] ~= nil then
              descr = descr .. string.format(" [%s]", attr.enum[value_decoded])
            elseif attr.enum.other ~= nil then
              descr = descr .. string.format(" [%s]", attr.enum.other)
            end
          end
          descr = descr .. string.format(" [%s]", tostring(value:bytes()))

        elseif (typ == "int64" and length == 8+2) then
          descr = descr .. string.format(", value: %s = %d [%s]", typ, value:le_int64(), tostring(value:bytes()))

        elseif (typ == "single" and length == 4+2) or (typ == "double" and length == 8+2) then
          descr = descr .. string.format(", value: %s = %f [%s]", typ, value:le_float(), tostring(value:bytes()))

        elseif typ == "string" then
          descr = descr .. string.format(", value: string = \"%s\" [%s]", value:string(), tostring(value:bytes()))

        else
          descr = descr .. string.format(", value: ? = %s", tostring(tostring(value:bytes())))
        end
      else
        descr = descr .. string.format(", value: ? = %s", tostring(value:bytes()))
      end

      tree:add(buffer(offset, length), descr)
      offset = offset + length
    end
  end
end

function zusi3_proto.dissector(buffer, pinfo, tree)
  local subtree = tree:add(zusi3_proto,buffer(), "Zusi 3 TCP data")
  local status, err = pcall(build_tree, buffer, 0, subtree, data_format)
  if not status then
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
