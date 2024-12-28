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
  [0x0001] = "Geschwindigkeit [m/s]",
  [0x0002] = "Druck Hauptluftleitung [bar]",
  [0x0003] = "Druck Bremszylinder I [bar]",
  [0x0004] = "Druck Hauptluftbehälter [bar]",
  [0x0005] = "Luftpresser läuft [aus/an]",
  [0x0006] = "Luftstrom Fvb [-1...0...1]",
  [0x0007] = "Luftstrom Zbv [-1...0...1]",
  [0x0008] = "Lüfter an [aus/an]",
  [0x0009] = "Zugkraft gesamt [N]",
  [0x000A] = "Zugkraft pro Achse [N]",
  [0x000B] = "Zugkraft-Soll gesamt [N]",
  [0x000C] = "Zugkraft-Soll pro Achse [N]",
  [0x000D] = "Oberstrom [A]",
  [0x000E] = "Fahrleitungsspannung [V]",
  [0x000F] = "Motordrehzahl I [1/min]",
  [0x0010] = "Uhrzeit Stunde [Zeigerposition Analoguhren]",
  [0x0011] = "Uhrzeit Minute [Zeigerposition Analoguhren]",
  [0x0012] = "Uhrzeit Sekunde [Zeigerposition Analoguhren]",
  [0x0013] = "Hauptschalter",
  [0x0014] = "Trennschütz [aus/an]",
  [0x0015] = "Fahrstufe",
  [0x0016] = "3D-Fenster",
  [0x0017] = "AFB-Sollgeschwindigkeit [m/s]",
  [0x0018] = "Druck Hilfsluftbehälter [bar]",
  [0x0019] = "Zurückgelegter Gesamtweg [m]",
  [0x001A] = "LM Getriebe [aus/an]",
  [0x001B] = "LM Schleudern [aus/an]",
  [0x001C] = "LM Gleiten [aus/an]",
  [0x001D] = "LM Mg-Bremse [aus/an]",
  [0x001E] = "LM H-Bremse [aus/an]",
  [0x001F] = "LM R-Bremse [aus/an]",
  [0x0020] = "LM Hochabbremsung [aus/an]",
  [0x0021] = "LM Schnellbremsung [aus/an]",
  [0x0022] = "Status Notbremsung",
  [0x0023] = "LM Uhrzeit (digital) [0=0:00, 1=24:00]",
  [0x0024] = "LM Drehzahlverstellung [aus/an]",
  [0x0025] = "LM Fahrtrichtung vor [aus/an]",
  [0x0026] = "LM Fahrtrichtung zurück [aus/an]",
  [0x0027] = "LM Fahrtrichtung M [aus/an]",
  [0x0028] = "Hintergrundbild",
  [0x0029] = "Motordrehmoment I [Nm]",
  [0x002A] = "Motorlast normiert [0...1]",
  [0x002B] = "Tunnel [aus/an]",
  [0x002C] = "Schienenstoß/Weiche [aus/an]",
  [0x002D] = "Stahlbrücke [aus/an]",
  [0x002E] = "Steinbrücke [aus/an]",
  [0x002F] = "x-Koordinate relativ zu UTM-Referenzpunkt [m]",
  [0x0030] = "y-Koordinate relativ zu UTM-Referenzpunkt [m]",
  [0x0031] = "z-Koordinate [m]",
  [0x0032] = "UTM-Referenzpunkt x [km]",
  [0x0033] = "UTM-Referenzpunkt y [km]",
  [0x0034] = "UTM-Zone",
  [0x0035] = "UTM-Zone 2",
  [0x0036] = "AFB an [aus/an]",
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
  [0x004B] = "Datum [Tage mit 0 = 30.12.1899]",
  [0x004C] = "Gleiskrümmung [1000/m]",
  [0x004D] = "Streckenhöchstgeschwindigkeit [m/s]",
  [0x004E] = "Zugkraftvorschlag Autopilot [N]",
  [0x004F] = "Beschleunigung x [m/s²]",
  [0x0050] = "Beschleunigung y [m/s²]",
  [0x0051] = "Beschleunigung z [m/s²]",
  [0x0052] = "Drehbeschleunigung x-Achse [rad/s²]",
  [0x0053] = "Drehbeschleunigung y-Achse [rad/s²]",
  [0x0054] = "Drehbeschleunigung z-Achse [rad/s²]",
  [0x0055] = "Stromabnehmer [bitweise kodiert]",
  [0x0056] = "LM Federspeicherbremse angelegt [aus/an]",
  [0x0057] = "Zustand Federspeicherbremse",
  [0x0058] = "Steuerwagen: LM Getriebe [aus/an]",
  [0x0059] = "Steuerwagen: LM Schleudern [aus/an]",
  [0x005A] = "Steuerwagen: LM Gleiten [aus/an]",
  [0x005B] = "Steuerwagen: LM H-Bremse [aus/an]",
  [0x005C] = "Steuerwagen: LM R-Bremse [aus/an]",
  [0x005D] = "Steuerwagen: LM Drehzahlverstellung [aus/an]",
  [0x005E] = "Druck Zeitbehälter [bar]",
  [0x005F] = "Geschwindigkeit (absolut) [m/s]",
  [0x0060] = "Zug ist entgleist [aus/ein]",
  [0x0061] = "Kilometrierung (Zugspitze) [km]",
  [0x0062] = "Motorstrom I [A]",
  [0x0063] = "Motorspannung I [V]",
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
  [0x007B] = "Steuerwagen: Lüfter an [aus/an]",
  [0x007C] = "Steuerwagen: Zugkraft gesamt [N]",
  [0x007D] = "Steuerwagen: Zugkraft pro Achse [N]",
  [0x007E] = "Steuerwagen: Zugkraft-Soll gesamt [N]",
  [0x007F] = "Steuerwagen: Zugkraft-Soll pro Achse [N]",
  [0x0080] = "Steuerwagen: Oberstrom [A]",
  [0x0081] = "Steuerwagen: Fahrleitungsspannung [V]",
  [0x0082] = "Steuerwagen: Motordrehzahl I [1/min]",
  [0x0083] = "Steuerwagen: Hauptschalter",
  [0x0084] = "Steuerwagen: Trennschütz [aus/an]",
  [0x0085] = "Steuerwagen: Fahrstufe",
  [0x0086] = "Steuerwagen: Motordrehmoment I [Nm]",
  [0x0087] = "Steuerwagen: Motorlast normiert [0...1]",
  [0x0088] = "Steuerwagen: Stromabnehmer [bitweise kodiert]",
  [0x0089] = "Steuerwagen: Motorstrom I [A]",
  [0x008A] = "Steuerwagen: Motorspannung I [V]",
  [0x008B] = "Geschwindigkeit (absolut) inkl. Schleudern [m/s]",
  [0x008C] = "Batteriehauptschalter aus [aus=1/an=0]",
  [0x008D] = "Status Fahrzeug",
  [0x008E] = "Status Zugverband",
  [0x008F] = "Bremsprobefunktion [0: aus, >0 aktiv]",
  [0x0090] = "Zug- und Brems-Gesamtkraftsoll normiert [0..1]",
  [0x0091] = "Steuerwagen: Zug- und Brems-Gesamtkraftsoll normiert [0..1]",
  [0x0092] = "Status Weichen",
  [0x0093] = "Zug- und Brems-Gesamtkraftsoll absolut normiert [0..1]",
  [0x0094] = "Steuerwagen: Zug- und Brems-Gesamtkraftsoll absolut normiert [0..1]",
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
  [0x00A9] = "Status Leuchtmelder für ZusiDisplay",
  [0x00AA] = "Außenhelligkeit [0..1]",
  [0x00AB] = "Status Zug-Fahrdaten",
  [0x00AC] = "Führerstand deaktiviert [aus/an]",
  [0x00AD] = "Solldruck Hauptluftleitung [bar]",
  [0x00AE] = "Motordrehzahl II [1/min]",
  [0x00AF] = "Motordrehmoment II [Nm]",
  [0x00B0] = "Motorstrom II [A]",
  [0x00B1] = "Motorspannung II [V]",
  [0x00B2] = "Zwangsbremsung [aus/an]",
  [0x00B3] = "Druck Bremszylinder II [bar]",
  [0x00B4] = "Status Signale",
  [0x00B5] = "Drehwinkel x-Achse [rad]",
  [0x00B6] = "Drehwinkel y-Achse [rad]",
  [0x00B7] = "Drehwinkel z-Achse [rad]",
}

aus_an = {
  [0] = "aus",
  [1] = "an",
}

aus_an_blinkend = {
  [0] = "aus",
  [1] = "an",
  [2] = "blinkend",
  [3] = "gegenläufig blinkend",
  [4] = "aus erzwingen",
}

boolean = {
  [0] = "nein",
  [1] = "ja",
}

tastaturzuordnungen = {
  [0x00] = "Keine Tastaturbedienung",
  [0x01] = "Fahrschalter",
  [0x02] = "Dynamische Bremse",
  [0x03] = "AFB/Tempomat",
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
  [0x16] = "Fahrpultintern 01",
  [0x17] = "Fahrpultintern 02",
  [0x18] = "Fahrpultintern 03",
  [0x19] = "Fahrpultintern 04",
  [0x1A] = "Fahrpultintern 05",
  [0x1B] = "Fahrpultintern 06",
  [0x1C] = "Fahrpultintern 07",
  [0x1D] = "Fahrpultintern 08",
  [0x1E] = "Fahrpultintern 09",
  [0x1F] = "Fahrpultintern 10",
  [0x20] = "Fahrpultintern 11",
  [0x21] = "Fahrpultintern 12",
  [0x22] = "Fahrpultintern 13",
  [0x23] = "Fahrpultintern 14",
  [0x24] = "Fahrpultintern 15",
  [0x25] = "Fahrpultintern 16",
  [0x26] = "Fahrpultintern 17",
  [0x27] = "Fahrpultintern 18",
  [0x28] = "Fahrpultintern 19",
  [0x29] = "Fahrpultintern 20",
  [0x2A] = "Programmsteuerung",
  [0x2B] = "Stromabnehmer",
  [0x2C] = "Führerstandssicht",
  [0x2D] = "Luftpresser aus",
  [0x2E] = "Zugfunk",
  [0x2F] = "LZB",
  [0x30] = "Fahrpultintern 21",
  [0x31] = "Fahrpultintern 22",
  [0x32] = "Fahrpultintern 23",
  [0x33] = "Fahrpultintern 24",
  [0x34] = "Fahrpultintern 25",
  [0x35] = "Fahrpultintern 26",
  [0x36] = "Fahrpultintern 27",
  [0x37] = "Fahrpultintern 28",
  [0x38] = "Fahrpultintern 29",
  [0x39] = "Fahrpultintern 30",
  [0x3A] = "Fahrpultintern 31",
  [0x3B] = "Fahrpultintern 32",
  [0x3C] = "Fahrpultintern 33",
  [0x3D] = "Fahrpultintern 34",
  [0x3E] = "Fahrpultintern 35",
  [0x3F] = "Fahrpultintern 36",
  [0x40] = "Fahrpultintern 37",
  [0x41] = "Fahrpultintern 38",
  [0x42] = "Fahrpultintern 39",
  [0x43] = "Fahrpultintern 40",
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
  [0x81] = "TischAuf_Down",
  [0x82] = "TischAuf_Up",
  [0x83] = "TischAus_Down",
  [0x84] = "TischAus_Up",
  [0x85] = "SifaPruefmodus_Down",
  [0x86] = "SifaPruefmodus_Up",
  [0x87] = "SifaFusspedal_Down",
  [0x88] = "SifaFusspedal_Up",
  [0x89] = "AntriebsaktivierungAuf_Down",
  [0x8A] = "AntriebsaktivierungAuf_Up",
  [0x8B] = "AntriebsaktivierungAb_Down",
  [0x8C] = "AntriebsaktivierungAb_Up",
  [0x8D] = "LokbremseLoesen_Down",
  [0x8E] = "LokbremseLoesen_Up",
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

etcs_baseline = {
  [0] = "Unbeschränkte Kompatibilität",
  [1] = "Display hat kein ETCS",
  [2] = "2.2.2",
  [3] = "2.3.0d",
  [4] = "3.4.0",
  [5] = "3.6.0",
  [6] = "4.0.0",
}

etcs_level = {
  [0] = "ETCS Level undefiniert",
  [1] = "ETCS Level STM",
  [2] = "ETCS Level 0",
  [3] = "ETCS Level 1",
  [4] = "ETCS Level 2",
  [5] = "ETCS Level 3",
}

etcs_modus = {
   [0] = "undefiniert",
   [1] = "FS",
   [2] = "OS",
   [3] = "SR",
   [4] = "SH",
   [5] = "UN",
   [6] = "SL",
   [7] = "SB",
   [8] = "TR",
   [9] = "PT",
  [10] = "SF",
  [11] = "IS",
  [12] = "NP",
  [13] = "NL",
  [14] = "SE",
  [15] = "SN",
  [16] = "RV",
  [17] = "LS",
  [18] = "PS",
}

etcs_grund_zwangsbremsung = {
  [0] = "Keine Zwangsbremsung",
  [6] = "v-Max-Überwachung",
  [7] = "Funktionsprüfung",
  [10] = "Rechnerausfall",
  [11] = "ETCS-Nothalt überfahren",
  [15] = "ETCS-Halt überfahren",
  [16] = "ETCS: Stillstands-/Rücklaufüberwachung ausgelöst",
  [17] = "ETCS: nicht quittiert",
  [18] = "ETCS: Funkausfall",
  [19] = "ETCS: Balisenstörung",
  [20] = "ETCS: manueller Levelwechsel",
  [27] = "Allgemeine Störung",
  [28] = "Stromversorgung fehlt",
}

zbs_betriebszustand = {
  [0] = "undefiniert",
  [1] = "aus (Kaltstart)",
  [2] = "aus (Warmstart)",
  [3] = "Systemhochlauf",
  [4] = "Test-Aufforderung",
  [5] = "Test läuft",
  [6] = "B",
  [7] = "X",
  [8] = "Z",
  [9] = "R",
  [10] = "Störbetrieb",
}

systemstatus = {
  [0] = "Ausgeschaltet",
  [1] = "Abgeschaltet",
  [2] = "Unterdrückt",
  [3] = "Aktiv",
}

bremsstellung = {
  [0] = "keine/undefiniert",
  [1] = "G",
  [2] = "P",
  [3] = "P+Mg",
  [4] = "R",
  [5] = "R+Mg",
  [6] = "Bremse aus",
  [7] = "H",
  [8] = "E",
  [9] = "E160",
  [10] = "R rot",
}

normalzustand_abgesperrt = {
  [0] = "Normalzustand",
  [1] = "abgesperrt",
}

absperrung_bremse = {
  [0] = "Keine Darstellung",
  [1] = "Ein Hahn",
  [2] = "Zwei Hähne",
}

stromsystem = {
  [0] = "Ohne",
  [1] = "Unbestimmt",
  [2] = "15 kV, 16 Hz",
  [3] = "25 kV, 50 Hz",
  [4] = "1500 V DC",
  [5] = "1200 V DC Stromschiene Hamburg",
  [6] = "3 kV DC",
  [7] = "750 V DC Stromschiene Berlin",
  [8] = "Bordsystem (Stromerzeugung im Fahrzeug)",
}

tuerzustand = {
  [0] = "zu",
  [1] = "öffnend",
  [2] = "offen",
  [3] = "Fahrgastwechsel abgeschlossen",
  [4] = "schließend",
  [5] = "gestört",
  [6] = "blockiert",
}

traktionssperre = {
  [0] = "Nichts",
  [1] = "Federspeicher",
  [2] = "Türsystem",
  [3] = "Bremsprobe",
  [4] = "Sifa-Hauptschalter",
  [5] = "Fahrschalter verlegt beim Aufschließen",
  [6] = "Richtungsschalter verlegt beim Aufschließen",
  [7] = "Kein Antrieb verfügbar",
  [8] = "Keine Richtung eingelegt",
  [9] = "vMax-Überschreitung",
  [10] = "Betriebsbremsung wegen vMax-Überschreitung",
  [11] = "Fahrschalter beim Verlegen nicht quittiert",
  [12] = "Abschaltung Tempomat/AFB",
  [13] = "Sifa-Zwangsbremsung",
  [14] = "Dynamische Bremse aktiv",
  [15] = "HBL-Druck zu niedrig",
  [16] = "HL-Druck zu niedrig",
  [17] = "Nicht ausreichendes Bremsvermögen",
  [18] = "Mg-Bremse aktiv",
  [19] = "Zylinderdruck zu hoch",
  [20] = "Notaus betätigt",
  [21] = "Hauptschalter nicht eingeschaltet",
  [22] = "Keine Oberspannung",
  [23] = "Nullstellungszwang",
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
    [0x000B] = { typ = "byte", name = "Klartextmeldungen", enum = {
      [0] = "Keine Klartextmeldungen möglich",
      [1] = "Klartextmeldungen möglich, aber nicht aktiv",
      [2] = "Klartextmeldungen aktiv",
      [3] = "nur Klartextmeldungen möglich",
    }},
    [0x000C] = { typ = "byte", name = "Funktionsprüfung", enum = {
      [1] = "Funktionsprüfung starten",
      [2] = "Funktionsprüfung OK",
      [3] = "Funktionsprüfung nicht OK",
    }},
    [0x000D] = { typ = "byte", name = "Systemstatus (Indusi)", enum = systemstatus, },
    [0x000E] = { typ = "string", name = "Bauart Zugbeeinflussungssystem als Text", },
    [0x000F] = { typ = "byte", name = "Indusi-Störschalterbauart", enum = {
      [0] = "Leuchtdrucktaster",
      [1] = "Drehschalter",
      [2] = "Leitungsschutzschalter",
    }},
    [0x0010] = { typ = "byte", name = "LZB-Störschalterbauart", enum = {
      [0] = "Leuchtdrucktaster",
      [1] = "Drehschalter",
    }},
    [0x0011] = { typ = "byte", name = "Systemstatus (LZB)", enum = systemstatus, },
  },
  nodes = {
    [0x0004] = {
      name = "Grunddaten",
      attributes = {
        [0x0001] = { typ = "word", name = "BRH-Wert (Bremshundertstel)", },
        [0x0002] = { typ = "word", name = "BRA-Wert (Bremsart)", },
        [0x0003] = { typ = "word", name = "ZL-Wert (Zuglänge) [m]", },
        [0x0004] = { typ = "word", name = "VMZ-Wert (Höchstgeschwindigkeit) [km/h]", },
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
        [0x0003] = { typ = "word", name = "ZL-Wert (Zuglänge) [m]", },
        [0x0004] = { typ = "word", name = "VMZ-Wert (Höchstgeschwindigkeit) [km/h]", },
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
        [0x0003] = { typ = "word", name = "ZL-Wert (Zuglänge) [m]", },
        [0x0004] = { typ = "word", name = "VMZ-Wert (Höchstgeschwindigkeit) [km/h]", },
        [0x0005] = { typ = "byte", name = "Zugehörige Zugart", enum = {
          [1] = "Zugart muss noch bestimmt werden",
          [2] = "U",
          [3] = "M",
          [4] = "O",
        }},
        [0x0006] = { typ = "byte", name = "Modus", enum = {
          [0] = "undefiniert",
          [4] = "Grunddaten",
          [5] = "Ersatzzugdaten",
          [6] = "Normalbetrieb",
        }},
      },
    },
  },
}

etcs_einstellungen_interaktionen = {
  name = "System aus der ETCS-Familie - Einstellungen und Interaktionen",
  attributes = {
    [0x0001] = { typ = "byte", name = "Zustand", enum = {
      [0] = "Zugdateneingabe undefiniert",
      [1] = "Zugdateneingabe nötig",
      [2] = "Zugdaten eingegeben",
      [3] = "Start of Mission abgeschlossen",
    }},
    [0x0005] = { typ = "byte", name = "ETCS-Passivschalter", enum = {
      [1] = "ETCS abgeschaltet",
      [2] = "ETCS eingeschaltet",
    }},
    [0x0006] = { typ = "byte", name = "ETCS-Störschalter (CEA)", enum = {
      [1] = "ETCS ausgeschaltet",
      [2] = "ETCS eingeschaltet",
    }},
    [0x0007] = { typ = "byte", name = "Luftabsperrhahn", enum = {
      [1] = "abgesperrt",
      [2] = "offen",
    }},
    [0x0008] = { typ = "byte", name = "ETCS-Quittierschalter", enum = {
      [1] = "verlegt",
      [2] = "Grundstellung",
    }},
    [0x0009] = { typ = "byte", name = "Override-Anforderung, Auslösung durch Client", enum = {
      [1] = "Override angefordert",
      [2] = "Grundstellung",
    }},
    [0x000A] = { typ = "byte", name = "Start", enum = {
      [1] = "Startkommando",
      [2] = "Grundstellung",
    }},
    [0x000B] = { typ = "word", name = "Level einstellen/anfordern", enum = etcs_level, },
    [0x000C] = { typ = "word", name = "Wenn STM ausgewählt: Index des aktiven STM-Systems in der ftd-Datei (1-indexiert)", },
    [0x000D] = { typ = "word", name = "Modus einstellen/anfordern", enum = etcs_modus, },
    [0x000E] = { typ = "byte", name = "TAF-Modus", enum = {
      [1] = "TAF quittiert",
      [2] = "Grundstellung",
      [3] = "TAF abgelehnt",
    }},
    [0x000F] = { typ = "byte", name = "Zug wurde neu übernommen", enum = boolean, },
    [0x0010] = { typ = "byte", name = "Info-Ton nötig", enum = boolean, },
    [0x0011] = { typ = "byte", name = "Funktionsprüfung", enum = {
      [1] = "Funktionsprüfung starten",
      [2] = "Funktionsprüfung OK",
      [3] = "Funktionsprüfung nicht OK",
    }},
    [0x0012] = { typ = "byte", name = "Baseline des EVC", enum = etcs_baseline, },
    [0x0013] = { typ = "byte", name = "Fahrzeug hat ETCS-LSS", enum = boolean, },
    [0x0014] = { typ = "byte", name = "Fahrzeug hat Passivschalter", enum = boolean, },
    [0x0015] = { typ = "byte", name = "Fahrzeug hat ETCS-Reset-Schalter", enum = boolean, },
    [0x0016] = { typ = "byte", name = "Fahrzeug hat ETCS-Reset-Softkey", enum = boolean, },
    [0x0017] = { typ = "byte", name = "ETCS-LSS", enum = {
      [1] = "ETCS-Stromversorgung aus",
      [2] = "ETCS-Stromversorgung an",
    }},
    [0x0018] = { typ = "byte", name = "Reset", enum = {
      [1] = "Resetkommando",
      [2] = "Grundstellung",
    }},
    [0x0019] = { typ = "string", name = "Bauart Zugbeeinflussungssystem als Text", },
  },
  nodes = {
    [0x0002] = {
      name = "Verfügbares STM-System",
      attributes = {
        [0x0001] = { typ = "word", name = "Index des STM-Systems in der ftd-Datei (1-indexiert)", },
        [0x0002] = { typ = "string", name = "Name des STM-Systems als Text", },
      },
    },
    [0x0003] = {
      name = "Zugdaten",
      attributes = {
        [0x0001] = { typ = "word", name = "Bremshundertstel [%]", },
        [0x0002] = { typ = "word", name = "Zugkategorie", },
        [0x0003] = { typ = "word", name = "Zuglänge [m]", },
        [0x0004] = { typ = "word", name = "Höchstgeschwindigkeit [km/h]", },
        [0x0005] = { typ = "word", name = "Achslast [kg]", },
        [0x0006] = { typ = "string", name = "Zugnummer", },
        [0x0007] = { typ = "string", name = "Tf-Nummer", },
        [0x0008] = { typ = "cardinal", name = "RBC-Nummer", },
        [0x0009] = { typ = "string", name = "RBC-Telefonnummer", },
        [0x000A] = { typ = "cardinal", name = "RBC-ID", },
        [0x000B] = { typ = "cardinal", name = "RBC-Land", },
        [0x000C] = { typ = "cardinal", name = "GSM-R-Netz (Radio Network ID)", },
        [0x000D] = { typ = "byte", name = "GSM-R-Netz-Eingabe", enum = {
          [0] = "durch Tf",
          [1] = "fest im Fahrzeug hinterlegt",
        }},
      },
    },
    [0x0004] = {
      name = "Spec",
      attributes = {
        [0x0001] = { typ = "byte", name = "Reibwert", enum = {
          [1] = "vermindert",
          [2] = "nicht vermindert",
        }},
      },
    },
    [0x001A] = {
      name = "Textmeldung quittiert",
      attributes = {
        [0x000A] = { typ = "cardinal", name = "Laufende ID", },
      },
    },
  },
}

zbs_einstellungen_interaktionen = {
  name = "System ZBS - Einstellungen und Interaktionen",
  attributes = {
    [0x0003] = { typ = "byte", name = "ZBS-Störschalter", enum = {
      [1] = "ZBS abgeschaltet",
      [2] = "ZBS eingeschaltet",
    }},
    [0x0004] = { typ = "byte", name = "ZBS-Hauptschalter", enum = {
      [1] = "ZBS ausgeschaltet",
      [2] = "ZBS eingeschaltet",
    }},
    [0x0005] = { typ = "byte", name = "Luftabsperrhahn", enum = {
      [1] = "abgesperrt",
      [2] = "offen",
    }},
    [0x0006] = { typ = "word", name = "Betriebszustand einstellen/anfordern", enum = zbs_betriebszustand, },
    [0x0007] = { typ = "word", name = "Wenn Altsystem ausgewählt: Index des aktiven Altsystems in der ftd-Datei (1-indexiert)", },
    [0x0008] = { typ = "byte", name = "Zug wurde neu übernommen", enum = boolean, },
    [0x0009] = { typ = "byte", name = "Systemstatus (ZBS)", enum = systemstatus, },
    [0x000A] = { typ = "string", name = "Bauart Zugbeeinflussungssystem als Text", },
  },
  nodes = {
    [0x0001] = {
      name = "Verfügbares Altsystem",
      attributes = {
        [0x0001] = { typ = "word", name = "Index des aktiven Altsystems in der ftd-Datei (1-indexiert)", },
        [0x0002] = { typ = "string", name = "Name des Altsystems als Text", },
      },
    },
    [0x0002] = {
      name = "Zugdaten",
      attributes = {
        [0x0001] = { typ = "word", name = "BRH-Wert (Bremshundertstel)", },
        [0x0002] = { typ = "word", name = "ZL-Wert (Zuglänge) [m]", },
        [0x0003] = { typ = "word", name = "VMZ-Wert (Höchstgeschwindigkeit) [km/h]", },
        [0x0004] = { typ = "string", name = "Zugnummer", },
        [0x0005] = { typ = "string", name = "Tf-Nummer", },
      },
    },
  },
}

fahrsperre_einstellungen_interaktionen = {
  name = "System Fahrsperre - Einstellungen und Interaktionen",
  attributes = {
    [0x0001] = { typ = "byte", name = "Fahrsperre-Störschalter", enum = {
      [1] = "Fahrsperre abgeschaltet",
      [2] = "Fahrsperre eingeschaltet",
    }},
    [0x0002] = { typ = "byte", name = "Fahrsperre-Hauptschalter", enum = {
      [1] = "Fahrsperre ausgeschaltet",
      [2] = "Fahrsperre eingeschaltet",
    }},
    [0x0003] = { typ = "byte", name = "Systemstatus (Fahrsperre)", enum = systemstatus, },
    [0x0004] = { typ = "string", name = "Bauart Zugbeeinflussungssystem als Text", },
    [0x0008] = { typ = "byte", name = "Zug wurde neu übernommen", enum = boolean, },
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
            [0x0004] = { name = "Fahrplan-Startdatum und -zeit", typ = "double", },
            [0x0005] = { name = "Version des TCP-Protokolls", typ = "string", },
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
            [0x0057] = { typ = "single", name = "Zustand Federspeicherbremse", enum = {
              [-1] = "nicht vorhanden",
              [0] = "an",
              [1] = "aus",
              [2] = "blinkend",
            }},
            [0x0083] = { typ = "single", name = "Steuerwagen: Hauptschalter", enum = {
              [0] = "ein",
              [1] = "aus",
              [2] = "aus, Sperre nach Oberspannung da",
              [3] = "aus, Traktionssperre nach HS ein",
            }},
            other = { name = "Physikalische Größe", name_enum = phys_quantities, typ = "single" },
          },
          nodes = {
            [0x0022] = {
              name = "Status Notbremssystem",
              attributes = {
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
                [0x0006] = { typ = "byte", name = "Melder „System bereit“", enum = aus_an_blinkend },
                [0x0007] = { typ = "byte", name = "Melder „Notbremsung“", enum = aus_an_blinkend },
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
                [0x0007] = { typ = "single", name = "Wert Weglängenmesser" },
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
                        [0x0001] = { typ = "single", name = "Zielgeschwindigkeit [m/s]", },
                        [0x0002] = { typ = "word", name = "Status", enum = {
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
                      name = "Status nach LZB-Rechnerausfall",
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
                        [0x0005] = { name = "Quittierung erwartet", },
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
                      [7] = "Funktionsprüfung: Quittierung erwartet",
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
                      [13] = "Geschwindigkeitsüberschreitung nach LZB-Ü-Ausfall",
                      [14] = "Richtungsschalter verlegt",
                      [25] = "LZB-Rückrollüberwachung",
                      [26] = "LZB Überschreitung 200 m nach „Befehl 40 blinkt“",
                      [27] = "Allgemeine Störung",
                      [28] = "Stromversorgung fehlt",
                    }},
                    [0x0004] = { typ = "string", name = "Grund der Zwangsbremsung", },
                    [0x0005] = { typ = "byte", name = "Melder 1000 Hz", enum = aus_an, },
                    [0x0006] = { typ = "byte", name = "Zugartmelder U", enum = aus_an, },
                    [0x0007] = { typ = "byte", name = "Zugartmelder M", enum = aus_an, },
                    [0x0008] = { typ = "byte", name = "Zugartmelder O", enum = aus_an, },
                    [0x0009] = { typ = "byte", name = "Indusi-Hupe", enum = {
                      [0] = "aus",
                      [1] = "Zwangsbemsung",
                      [2] = "Hupe",
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
                    [0x000D] = { typ = "word", name = "LZB-Zustand", enum = {
                      [0] = "Keine LZB-Führung",
                      [1] = "Normale LZB-Fahrt",
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
                    [0x0021] = { typ = "single", name = "Sollgeschwindigkeit [m/s]", },
                    [0x0022] = { typ = "single", name = "Zielgeschwindigkeit [m/s] (Wert<0 → dunkel)", },
                    [0x0023] = { typ = "single", name = "Zielweg [m] (Wert<0 → dunkel)", },
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
                    [0x002C] = { typ = "byte", name = "1000-Hz-Beeinflussung erfolgt", enum = boolean, },
                    [0x002D] = { typ = "byte", name = "500-Hz-Beeinflussung erfolgt", enum = boolean, },
                    [0x002E] = { typ = "byte", name = "2000-Hz-Beeinflussung erfolgt", enum = boolean, },
                    [0x002F] = { typ = "byte", name = "Melder 1000 Hz", enum = aus_an_blinkend, },
                    [0x0030] = { typ = "byte", name = "Melder Zugart O", enum = aus_an_blinkend, },
                    [0x0031] = { typ = "byte", name = "Melder Zugart M", enum = aus_an_blinkend, },
                    [0x0032] = { typ = "byte", name = "Melder Zugart U", enum = aus_an_blinkend, },
                    [0x0033] = { typ = "byte", name = "Melder 500 Hz", enum = aus_an_blinkend, },
                    [0x0034] = { typ = "byte", name = "Melder Befehl", enum = aus_an_blinkend, },
                    [0x0035] = { typ = "byte", name = "Melder Zugart Rechts", enum = aus_an_blinkend, },
                    [0x0036] = { typ = "byte", name = "Melder Zugart 65", enum = aus_an_blinkend, },
                    [0x0037] = { typ = "byte", name = "Melder Zugart Links", enum = aus_an_blinkend, },
                    [0x0038] = { typ = "byte", name = "Melder H", enum = aus_an_blinkend, },
                    [0x0039] = { typ = "byte", name = "Melder E40", enum = aus_an_blinkend, },
                    [0x003A] = { typ = "byte", name = "Melder Ende", enum = aus_an_blinkend, },
                    [0x003B] = { typ = "byte", name = "Melder B", enum = aus_an_blinkend, },
                    [0x003C] = { typ = "byte", name = "Melder Ü", enum = aus_an_blinkend, },
                    [0x003D] = { typ = "byte", name = "Melder EL", enum = aus_an_blinkend, },
                    [0x003E] = { typ = "byte", name = "Melder V40", enum = aus_an_blinkend, },
                    [0x003F] = { typ = "byte", name = "Melder S", enum = aus_an_blinkend, },
                  }
                },
                [0x0004] = etcs_einstellungen_interaktionen,
                [0x0005] = {
                  name = "System aus der ETCS-Familie - Betriebsdaten",
                  attributes = {
                    [0x0001] = { typ = "word", name = "Aktiver Level", enum = etcs_level, },
                    [0x0002] = { typ = "word", name = "Aktiver ETCS-Modus", enum = etcs_modus, },
                    [0x0003] = { typ = "word", name = "Grund der Zwangs- oder Betriebszwangsbremsung", enum = etcs_grund_zwangsbremsung, },
                    [0x0004] = { typ = "string", name = "Grund der Zwangs- oder Betriebszwangsbremsung als Text", },
                    [0x0009] = { typ = "single", name = "Zielgeschwindigkeit [m/s] (<0: dunkel)", },
                    [0x000A] = { typ = "single", name = "Zielweg [m] (<0: dunkel)", },
                    [0x000B] = { typ = "single", name = "Abstand Bremseinsatzpunkt [m]", },
                    [0x000C] = { typ = "single", name = "Entlassungsgeschwindigkeit [m/s]", },
                    [0x000D] = { typ = "single", name = "Sollgeschwindigkeit [m/s]", },
                    [0x000E] = { typ = "single", name = "Warngeschwindigkeit [m/s]", },
                    [0x000F] = { typ = "single", name = "Bremsgeschwindigkeit [m/s]", },
                    [0x0010] = { typ = "single", name = "Zwangsbremsgeschwindigkeit [m/s]", },
                    [0x0011] = { typ = "byte", name = "Bremskurve läuft ab", enum = boolean },
                    [0x0013] = { typ = "byte", name = "TAF-Status", enum = {
                      [0] = "kein TAF aktiv",
                      [1] = "TAF wird nötig",
                      [2] = "TAF angefordert",
                      [3] = "TAF quittiert",
                      [4] = "TAF abgelehnt",
                    }},
                    [0x0014] = { typ = "byte", name = "Override aktiv", enum = {
                      [1] = "Override aktiv",
                      [2] = "Override verdeckt aktiv",
                    }},
                    [0x0015] = { typ = "byte", name = "Nothalt-Status", enum = {
                      [0] = "kein Nothalt",
                      [1] = "bedingter Nothalt aktiv",
                      [2] = "unbedingter Nothalt aktiv",
                    }},
                    [0x0016] = { typ = "word", name = "Betriebszwangsbremsung", enum = {
                      [0] = "Keine Zwangsbremsung",
                      [6] = "v-Max-Überwachung",
                      [7] = "Funktionsprüfung",
                      [10] = "Rechnerausfall",
                      [11] = "ETCS-Nothalt überfahren",
                      [15] = "ETCS-Halt überfahren",
                      [16] = "ETCS: Stillstands-/Rücklaufüberwachung ausgelöst",
                      [17] = "ETCS: nicht quittiert",
                      [18] = "ETCS: Funkausfall",
                      [19] = "ETCS: Balisenstörung",
                      [20] = "ETCS: manueller Levelwechsel",
                    }},
                    [0x001D] = { typ = "byte", name = "ETCS-Baseline der Strecke", enum = etcs_baseline, },
                  },
                  nodes = {
                    [0x0005] = {
                      name = "STM-Info",
                      attributes = {
                        [0x0001] = { typ = "word", name = "Index des aktiven STM-Systems in der ftd-Datei (1-indexiert)", },
                      },
                    },
                    [0x0006] = {
                      name = "Angekündigter oder neu aktivierter Level",
                      attributes = {
                        [0x0001] = { typ = "word", name = "Neuer Level", enum = etcs_level, },
                        [0x0002] = { typ = "byte", name = "Quittierung", enum = {
                          [0] = "gar keine Quittierung nötig",
                          [1] = "noch keine Quittierung nötig",
                          [2] = "Quittierung nötig, aber noch nicht alle Voraussetzungen gegeben",
                          [3] = "Quittierung nötig",
                          [4] = "quittiert",
                          [5] = "wirksam",
                        }},
                      },
                    },
                    [0x0007] = {
                      name = "Angekündigter Modus",
                      attributes = {
                        [0x0001] = { typ = "word", name = "Neuer Modus", enum = etcs_modus, },
                        [0x0002] = { typ = "byte", name = "Quittierung", enum = {
                          [0] = "gar keine Quittierung nötig",
                          [1] = "noch keine Quittierung nötig",
                          [2] = "Quittierung nötig, aber noch nicht alle Voraussetzungen gegeben",
                          [3] = "Quittierung nötig",
                          [4] = "quittiert",
                          [5] = "wirksam",
                        }},
                      },
                    },
                    [0x0008] = {
                      name = "Funkstatus",
                      attributes = {
                        [0x0001] = { typ = "byte", name = "Zustand", enum = {
                          [0] = "keine Verbindung",
                          [1] = "Verbindung wird aufgebaut",
                          [2] = "Verbindung steht",
                          [3] = "Verbindung Neuaufbau",
                          [4] = "Verbindung Einwahlfehler",
                          [5] = "Verbindung ausgefallen",
                          [6] = "Kein Netz",
                          [7] = "Verbindung kann nicht hergestellt werden (Störung)",
                        }},
                      },
                    },
                    [0x0012] = {
                      name = "Vorschaupunkt",
                      attributes = {
                        [0x0001] = { typ = "word", name = "Herkunft", enum = {
                          [1] = "Strecke",
                          [3] = "Hauptsignal",
                          [9] = "Rangiersignal",
                          [14] = "ETCS",
                          [17] = "Infrastrukturinfo",
                        }},
                        [0x0002] = { typ = "single", name = "Geschwindigkeit [m/s] (-1: ETCS-Ende)", },
                        [0x0003] = { typ = "single", name = "Abstand [m]", },
                        [0x0004] = { typ = "single", name = "Höhenwert [m]", },
                        [0x0005] = { typ = "word", name = "Parameter", enum = {
                          [2] = "Stromabnehmer senken",
                          [4] = "Stromabnehmer heben",
                          [6] = "Hauptschalter aus",
                          [8] = "Hauptschalter ein",
                          [10] = "Anfang NBÜ-Abschnitt",
                          [12] = "Ende NBÜ-Abschnitt",
                        }},
                        [0x0006] = { typ = "single", name = "Neigung [‰]", },
                      },
                    },
                    [0x0017] = {
                      name = "ETCS-EL-Auftrag",
                      attributes = {
                        [0x0001] = { typ = "byte", name = "ETCS-EL-Auftrag", enum = {
                          [1] = "Ankündigung Hauptschalter aus",
                          [2] = "Hauptschalter aus",
                          [3] = "Hauptschalter ein",
                          [8] = "Ankündigung Stromabnehmer senken",
                          [9] = "Stromabnehmer senken",
                          [10] = "Stromabnehmer heben",
                        }},
                      }
                    },
                    [0x0018] = {
                      name = "ETCS-Funktionsprüfung läuft",
                      attributes = {
                        [0x0001] = { typ = "byte", name = "Zustand Funktionsprüfung", enum = {
                          [0] = "Kein besonderer Zustand",
                          [1] = "Bremseingriff ETCS",
                          [2] = "Sonstiger Bremseingriff",
                          [3] = "Quittierung erwartet",
                          [4] = "Prüfung erfolgreich",
                          [5] = "Prüfung nicht erfolgreich",
                        }},
                      }
                    },
                    [0x0019] = {
                      name = "Bootvorgang ETCS-Gerät läuft",
                      attributes = {
                        [0x0001] = { typ = "byte", name = "Zustand Bootvorgang", enum = {
                          [1] = "Start, Modus SF, HL entlüftet",
                          [2] = "Display erlischt weitgehend",
                          [3] = "HL füllt, Modus SB, Selbsttest beginnt",
                          [4] = "Selbsttest OK",
                          [5] = "STM werden gefunden",
                        }},
                      },
                    },
                    [0x001A] = {
                      name = "ETCS-Textmeldung",
                      attributes = {
                        [0x0001] = { typ = "cardinal", name = "Laufende ID", },
                        [0x0002] = { typ = "double", name = "Zeitstempel", },
                        [0x0003] = { typ = "word", name = "Meldungstyp (Zusi-intern, 0=individuell)", },
                        [0x0004] = { typ = "string", name = "Meldungstyp gemäß ETCS-Spezifikation", },
                        [0x0005] = { typ = "string", name = "Meldungstext", },
                        [0x0006] = { typ = "string", name = "Parameterwert", },
                        [0x0007] = { typ = "byte", name = "Quittierpflichtige Meldung", enum = {
                          [0] = "Meldung muss nicht (mehr) quittiert werden",
                          [1] = "Quittierpflichtige Meldung",
                        }},
                      },
                    },
                    [0x001B] = {
                      name = "ETCS-Shunting-Zustand",
                      attributes = {
                        [0x0001] = { typ = "byte", name = "Zustand", enum = {
                          [0] = "Grundzustand",
                          [1] = "SH-Anfrage an RBC geschickt",
                          [2] = "SH-Anfrage zugestimmt",
                          [3] = "SH-Anfrage abgelehnt",
                        }},
                      },
                    },
                    [0x001C] = {
                      name = "ETCS-Balise befahren",
                      attributes = {
                        [0x0001] = { typ = "string", name = "Balisenkennung", },
                      },
                    },
                    [0x001E] = {
                      name = "ETCS-NBÜ-Abschnitt",
                      attributes = {
                        [0x0001] = { typ = "byte", name = "NBÜ-Abschnitt-Typ", enum = {
                          [0] = "NBÜ-Abschnitt außerhalb Bremskurve",
                          [1] = "Ankündigung NBÜ-Abschnitt",
                          [2] = "NBÜ-Abschnitt",
                        }},
                      },
                    },
                  },
                },
                [0x0006] = {
                  name = "System aus der ZUB-Familie - Einstellungen",
                  attributes = {
                    [0x0001] = { typ = "word", name = "BRH-Wert (Bremshundertstel", },
                    [0x0002] = { typ = "word", name = "ZL-Wert (Zuglänge) [m]", },
                    [0x0003] = { typ = "word", name = "VMZ-Wert (Höchstgeschwindigkeit) [km/h]", },
                    [0x0004] = { typ = "byte", name = "Systemstatus (ZUB)", enum = systemstatus, },
                    [0x0005] = { typ = "string", name = "Bauart Zugbeeinflussungssystem als Text", },
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
                    [0x0007] = { typ = "byte", name = "Status Melder GNT Ü", enum = aus_an_blinkend, },
                    [0x0008] = { typ = "byte", name = "Status Melder GNT G", enum = aus_an_blinkend, },
                    [0x0009] = { typ = "byte", name = "Status Melder GNT S", enum = aus_an_blinkend, },
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
                    [0x000B] = { typ = "byte", name = "Betriebszwangsbremsung aktiv", },
                  },
                },
                [0x0008] = zbs_einstellungen_interaktionen,
                [0x0009] = {
                  name = "System ZBS - Betriebsdaten",
                  attributes = {
                    [0x0001] = { typ = "word", name = "Aktiver Betriebszustand", enum = zbs_betriebszustand, },
                    [0x0002] = { typ = "word", name = "Grund der Zwangsbremsung", enum = {
                      [0] = "Keine Zwangsbremsung",
                      [6] = "v-Max-Überwachung",
                      [7] = "Funktionsprüfung",
                      [10] = "Rechnerausfall",
                      [21] = "ZBS: Halt überfahren",
                      [22] = "ZBS: Balisenstörung",
                      [23] = "ZBS: Rollüberwachung",
                    }},
                    [0x0004] = { typ = "word", name = "Betriebszwangsbremsung", enum = {
                      [0] = "Keine Zwangsbremsung",
                      [6] = "v-Max-Überwachung",
                      [7] = "Funktionsprüfung",
                      [10] = "Rechnerausfall",
                      [21] = "ZBS: Halt überfahren",
                      [22] = "ZBS: Balisenstörung",
                      [23] = "ZBS: Rollüberwachung",
                    }},
                    [0x0005] = { typ = "byte", name = "Melder Ü", enum = aus_an, },
                    [0x0006] = { typ = "byte", name = "Melder G", enum = aus_an_blinkend, },
                    [0x0007] = { typ = "byte", name = "Melder S", enum = aus_an, },
                    [0x0008] = { typ = "byte", name = "Melder A", enum = aus_an_blinkend, },
                    [0x0009] = { typ = "single", name = "Zielgeschwindigkeit [m/s] (<0: dunkel)", },
                    [0x000A] = { typ = "single", name = "Freigabegeschwindigkeit [m/s] (<0: dunkel)", },
                    [0x000B] = { typ = "byte", name = "Befehlsfahrt aktiv", enum = boolean, },
                  },
                  nodes = {
                    [0x0003] = {
                      name = "Altsystem-Info",
                      attributes = {
                        [0x0001] = { typ = "word", name = "Index des aktiven Altsystems in der ftd-Datei (1-indexiert)", },
                      },
                    }
                  },
                },
                [0x000A] = fahrsperre_einstellungen_interaktionen,
                [0x000B] = {
                  name = "System Fahrsperre - Betriebsdaten",
                  attributes = {
                    [0x0001] = { typ = "byte", name = "Melder an", },
                    [0x0002] = { typ = "byte", name = "Zwangsbremsung wirksam", },
                    [0x0003] = { typ = "cardinal", name = "Zählerstand gewollte Vorbeifahrt", },
                    [0x0004] = { typ = "cardinal", name = "Zählerstand ungewollte Vorbeifahrt", },
                  },
                },
                [0x000C] = {
                  name = "System SCMT - Einstellungen und Interaktionen",
                  attributes = {
                    [0x0001] = { typ = "byte", name = "Pneumatische Platte", enum = {
                      [0] = "abgeschaltet",
                      [1] = "eingeschaltet",
                    }},
                  },
                },
                [0x000D] = {
                  name = "System SCMT - Betriebsdaten",
                },
              },
            },
            [0x0066] = {
              name = "Status Türsystem",
              attributes = {
                [0x0001] = { typ = "string", name = "Bezeichnung des Systems als Text", },
                [0x0002] = { typ = "byte", name = "Status linke Seite", enum = tuerzustand, },
                [0x0003] = { typ = "byte", name = "Status rechte Seite", enum = tuerzustand, },
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
                [0x000B] = { typ = "byte", name = "Status Melder „(Zwangs)schließen“", enum = aus_an_blinkend },
                [0x000C] = { typ = "byte", name = "Melder „Türen links+rechts“", enum = aus_an, },
                [0x000D] = { typ = "byte", name = "Status Melder „Türen links+rechts“", enum = aus_an_blinkend },
                [0x000E] = { typ = "byte", name = "Melder „Zentrales Öffnen links“", enum = aus_an, },
                [0x000F] = { typ = "byte", name = "Melder „Zentrales Öffnen rechts“", enum = aus_an, },
                [0x0010] = { typ = "byte", name = "Status Melder „Zentrales Öffnen links“", enum = aus_an_blinkend, },
                [0x0011] = { typ = "byte", name = "Status Melder „Zentrales Öffnen rechts“", enum = aus_an_blinkend, },
                [0x0012] = { typ = "byte", name = "Melder „Grünschleife“", enum = aus_an, },
                [0x0013] = { typ = "byte", name = "Status Melder „TAV/Grünschleife“", enum = aus_an_blinkend, },
                [0x0014] = { typ = "byte", name = "Türzustand", enum = {
                  [0] = "Alle Türen zu",
                  [1] = "Mindestens eine Tür ist offen",
                }},
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
                [0x0002] = { typ = "word", name = "Erste wirksame Traktionssperre", enum = traktionssperre, },
                [0x0003] = { typ = "byte", name = "Status Fahrschalter", enum = {
                  [1] = "Deaktiviert",
                  [2] = "Normalzustand",
                }},
                [0x0004] = { typ = "byte", name = "Status Dynamische Bremse", enum = {
                  [1] = "Deaktiviert",
                  [2] = "Normalzustand",
                }},
                [0x0006] = { typ = "byte", name = "Sanderzustand", enum = {
                  [1] = "Sandet nicht",
                  [2] = "Sandet",
                }},
                [0x0007] = { typ = "byte", name = "Bremsprobezustand", enum = {
                  [0] = "Normalbetrieb",
                  [1] = "Bremsprobemodus aktiv",
                  -- weitere Zustaende, extern aktiviert
                }},
                [0x0008] = { typ = "word", name = "Stellung Richtungsschalter" },
                [0x0009] = { typ = "word", name = "Status automatischer Angleicher", enum = {
                  [0] = "Normalbetrieb",
                  [1] = "Angleicher füllt auf",
                  [2] = "Druck wird auf Normalniveau zurückgeführt",
                }},
                [0x000A] = { typ = "byte", name = "Luftpresserzustand", enum = {
                  [0] = "Aus",
                  [1] = "Arbeitet",
                }},
                [0x000C] = { typ = "byte", name = "Spitzenlicht-Zustand", enum = {
                  [0] = "An",
                  [1] = "Aus",
                  [2] = "An+Fernlicht",
                  [3] = "An+Fernlicht hell",
                }},
                [0x000D] = { typ = "byte", name = "Sanden unter Vorgabegeschwindigkeit", enum = boolean, },
                [0x000E] = { typ = "byte", name = "Sander im Testmodus", enum = boolean, },
                [0x000F] = { typ = "byte", name = "Sander im Automatikmodus", enum = boolean, },
              },
              nodes = {
                [0x000B] = {
                  name = "Störungsmeldungen",
                  nodes = {
                    [0x0001] = {
                      name = "Störungsmeldung",
                      attributes = {
                        [0x0001] = { typ = "cardinal", name = "Laufende Nummer", },
                        [0x0002] = { typ = "byte", name = "Priorität", enum = {
                          [0] = "hoch",
                          [1] = "mittel",
                          [2] = "niedrig",
                          [3] = "niedrig ohne akustische Ausgabe",
                        }},
                        [0x0003] = { typ = "string", name = "Text", },
                        [0x0004] = { typ = "word", name = "Meldungstyp (Zusi-intern)", },
                        [0x0005] = { typ = "byte", name = "Quittiert", enum = boolean },
                        [0x0006] = { typ = "double", name = "Zeitpunkt", },
                        [0x0007] = { typ = "string", name = "Client-intern", },
                      },
                    },
                  },
                },
                [0x0010] = {
                  name = "Traktionssperre",
                  attributes = {
                    [0x0001] = { typ = "word", name = "Grund", enum = traktionssperre, },
                  }
                },
              }
            },
            [0x008E] = {
              name = "Status Zug",
              attributes = {
                [0x0002] = { typ = "byte", name = "Zugtyp", enum = {
                  [0] = "Güterzug",
                  [1] = "Reisezug",
                }},
                [0x0003] = { typ = "word", name = "Bremsstellung Zug", enum = bremsstellung, },
              },
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
                    [0x001B] = {
                      name = "Im Fahrzeug vorhandene Bremsstellung",
                      attributes = {
                        [0x0001] = { typ = "byte", name = "Bremsstellung", enum = bremsstellung, },
                        [0x0002] = { typ = "single", name = "Zugehörige Bremsmasse", },
                        [0x0003] = { typ = "byte", name = "Bremsstellung wirksam", enum = boolean },
                      },
                    },
                    [0x0023] = {
                      name = "Im Fahrzeug vorhandenes Türschließsystem",
                      attributes = {
                        [0x0001] = { typ = "string", name = "Bezeichnung", },
                      },
                    },
                    [0x0025] = {
                      name = "Antriebssystem",
                      attributes = {
                        [0x0001] = { typ = "byte", name = "Typ", enum = {
                          [0] = "Unbestimmt",
                          [1] = "Einfaches Antriebsmodell",
                          [2] = "Dieselelektrisch (Drehstrom)",
                          [3] = "Dieselelektrisch (Gleichstrom)",
                          [4] = "Dieselhydraulisch",
                          [5] = "Dieselmechanisch",
                          [6] = "Elektrisch (Drehstrom)",
                          [7] = "Elektrisch (Reihenschluss)",
                        }},
                        [0x0002] = { typ = "byte", name = "Stromtyp", enum = stromsystem, },
                        [0x0003] = { typ = "byte", name = "Aktiv", enum = boolean, },
                        [0x0004] = { typ = "single", name = "Max. Kraft [N]" },
                        [0x0005] = { typ = "byte", name = "Antrieb gesperrt", enum = boolean, },
                      },
                    },
                    [0x0026] = {
                      name = "Dynamisches Bremssystem",
                      attributes = {
                        [0x0001] = { typ = "byte", name = "Typ", enum = {
                          [0] = "Unbestimmt",
                          [1] = "Elektrisch (Drehstrom)",
                          [2] = "Elektrisch (Reihenschluss)",
                          [3] = "Retarder",
                        }},
                        [0x0002] = { typ = "byte", name = "Stromtyp", enum = stromsystem, },
                        [0x0003] = { typ = "byte", name = "Aktiv", enum = boolean, },
                        [0x0004] = { typ = "single", name = "Max. Kraft [N]", },
                      },
                    },
                  },
                  attributes = {
                    [0x0001] = { typ = "string", name = "Fahrzeugdateiname", },
                    [0x0002] = { typ = "string", name = "Beschreibung", },
                    [0x0003] = { typ = "word", name = "Vorgabe Bremsstellung", enum = bremsstellung, },
                    [0x0005] = { typ = "single", name = "Fahrzeughöchstgeschwindigkeit [m/s]", },
                    [0x0006] = { typ = "string", name = "Baureihenangabe aus Fahrzeugdatei", },
                    [0x0007] = { typ = "string", name = "Farbgebungsangabe aus Fahrzeugdatei", },
                    [0x0008] = { typ = "byte", name = "Traktionsmodus", enum = {
                      [0] = "Eigener Tf",
                      [1] = "Mehrfachtraktion",
                      [2] = "Kalt",
                    }},
                    [0x0009] = { typ = "byte", name = "Stromabnehmerschaltung", },
                    [0x000A] = { typ = "single", name = "Maximaler Bremszylinderdruck", },
                    [0x000B] = { typ = "string", name = "NVR-Nummer oder historische Fahrzeugnummer", },
                    [0x000C] = { typ = "word", name = "Anzahl Sitzplätze 1. Klasse", },
                    [0x000D] = { typ = "word", name = "Anzahl Sitzplätze 2. Klasse", },
                    [0x000E] = { typ = "byte", name = "Fahrzeug gedreht eingereiht", enum = boolean, },
                    [0x000F] = { typ = "string", name = "Fahrzeuggattung aus Fahrzeugdatei", },
                    [0x0010] = { typ = "byte", name = "Führerstandsmodus", enum = {
                      [0] = "Eine Führerstandsdatei für beide Richtungen",
                      [1] = "Fahrzeug hat keinen Führerstand",
                      [2] = "Es existiert nur ein Führerstand in Richtung vorwärts",
                      [3] = "Separate Führerstandsdateien für beide Richtungen",
                    }},
                    [0x0011] = { typ = "single", name = "Fahrzeuglänge", },
                    [0x0012] = { typ = "single", name = "Fahrzeugmasse inkl. Ladung", },
                    [0x0013] = { typ = "single", name = "Masse der Ladung", },
                    [0x0014] = { typ = "byte", name = "Bremsbauart", enum = {
                      [0] = "Undefiniert",
                      [1] = "Scheibenbremse",
                      [2] = "Grauguss-Bremssohle",
                      [3] = "K-Bremssohle",
                      [4] = "LL-Bremssohle",
                      [5] = "Matrossow-Bremse",
                      [6] = "Scheibenbremse mit Symbol für „ausgeschaltet“",
                    }},
                    [0x0015] = { typ = "single", name = "Bremsmasse Feststellbremse", },
                    [0x0016] = { typ = "single", name = "Aktive Bremsmasse", },
                    [0x0017] = { typ = "single", name = "Aktive Bremsmasse inkl. dyn. Bremsen", },
                    [0x0018] = { typ = "word", name = "Anzahl Achsen", },
                    [0x0019] = { typ = "byte", name = "Bauart Batteriehauptschalter", enum = {
                      [0] = "Drehtaster aus/0/ein",
                      [1] = "Keiner",
                      [2] = "Hebel",
                      [3] = "Drucktaster",
                      [4] = "Zwei Drucktaster",
                    }},
                    [0x001A] = { typ = "byte", name = "Bauart Stromabnehmerwahlschalter", enum = {
                      [0] = "Keiner",
                      [1] = "Drehschalter vorne/Auto/hinten/beide",
                      [2] = "Luftabsperrhähne vorne/hinten",
                    }},
                    [0x001C] = { typ = "string", name = "Bezeichnung Bremsbauart", },
                    [0x001D] = { typ = "data", name = "Seitenansicht des Fahrzeugs als png-Datei", },
                    [0x001E] = { typ = "byte", name = "Hauptluftbehälterleitung vorhanden", enum = boolean, },
                    [0x001F] = { typ = "byte", name = "Fahrzeugverbund", enum = {
                      [0] = "Fahrzeug ist eigenständig",
                      [1] = "Fahrzeugteil ohne eigenen Fahrzeugstatus",
                    }},
                    [0x0020] = { typ = "byte", name = "Lokstatus", enum = {
                      [0] = "Unbekannt",
                      [1] = "Fahrzeug ist Lokomotive",
                      [2] = "Fahrzeug ist keine Lokomotive",
                    }},
                    [0x0021] = { typ = "string", name = "Interne Fahrzeugnummer", },
                    [0x0022] = { typ = "string", name = "Gefahrgutkennzeichen", },
                    [0x0024] = { typ = "byte", name = "Bauart Türsystem-Wahlschalter", enum = {
                      [0] = "Keiner",
                      [1] = "Drehtaster",
                    }},
                    [0x0027] = { typ = "byte", name = "Automatisch lastabhängige Bremse", enum = boolean, },
                    [0x0028] = { typ = "byte", name = "Direkte Bremse 1", enum = normalzustand_abgesperrt, },
                    [0x0029] = { typ = "byte", name = "Direkte Bremse 2", enum = normalzustand_abgesperrt, },
                    [0x002A] = { typ = "byte", name = "Indirekte Bremse 1", enum = normalzustand_abgesperrt, },
                    [0x002B] = { typ = "byte", name = "Indirekte Bremse 2", enum = normalzustand_abgesperrt, },
                    [0x002C] = { typ = "byte", name = "Federspeicherbremse 1", enum = normalzustand_abgesperrt, },
                    [0x002D] = { typ = "byte", name = "Federspeicherbremse 2", enum = normalzustand_abgesperrt, },
                    [0x002E] = { typ = "byte", name = "Absperrung direkte Bremse", enum = absperrung_bremse, },
                    [0x002F] = { typ = "byte", name = "Absperrung indirekte Bremse", enum = absperrung_bremse, },
                    [0x0030] = { typ = "byte", name = "Absperrung Federspeicherbremse", enum = absperrung_bremse, },
                    [0x0031] = { typ = "byte", name = "Schalter Pultaktivierung", enum = {
                      [0] = "Keine Darstellung",
                      [1] = "Leuchtdrucktaster",
                      [2] = "Mit Batteriehauptschalter kombiniert",
                    }},
                    [0x0032] = { typ = "byte", name = "Schalter Bremsprobe", enum = {
                      [0] = "Keine Darstellung",
                      [1] = "Drucktaster",
                    }},
                    [0x0033] = { typ = "word", name = "Batteriespannung [V]", },
                    [0x0034] = { typ = "byte", name = "Batteriespannungsanzeige", enum = {
                      [0] = "Keine Darstellung",
                      [1] = "Quadratisch",
                      [2] = "Rund",
                    }},
                    [0x0035] = { typ = "word", name = "Türsystemwahlschalter: Nummer aktives Türsystem", enum = {
                      [0] = "Aus",
                    }},
                    [0x0036] = { typ = "single", name = "Bremskraft Feststellbremse", },
                    [0x0037] = { typ = "int", name = "Haupt-ID der Fahrzeugvariante", },
                    [0x0038] = { typ = "int", name = "Neben-ID der Fahrzeugvariante", },
                    [0x0039] = { typ = "string", name = "Name Führerstandsdatei", },
                    [0x003A] = { typ = "byte", name = "Bodenbedienbare Handbremse", enum = boolean },
                    [0x003B] = { typ = "single", name = "Umstellgewicht für Lastwechsel", },
                    [0x003C] = { typ = "byte", name = "Lösezugbauart", enum = {
                      [0] = "Automatisch wirkend",
                      [1] = "Manueller Lösezug",
                      [2] = "Drucktaster",
                    }},
                    [0x003D] = { typ = "byte", name = "Zustand Lastwechsel", enum = {
                      [0] = "leer",
                      [1] = "beladen",
                    }},
                    [0x003E] = { typ = "byte", name = "Zustand Schalter Nachbremsung", enum = {
                      [1] = "aus - Fahrzeug hat Schalter",
                      [2] = "nachbremsen - Fahrzeug hat Schalter",
                      [3] = "aus - per Display einzustellen",
                      [4] = "nachbremsen - per Display einzustellen",
                    }},
                    [0x003F] = { typ = "single", name = "Maximale Zuladung", },
                    [0x0040] = { typ = "byte", name = "Hauptschaltersperrung", enum = {
                      [1] = "Hauptschalter gesperrt",
                      [2] = "Hauptschalter nicht gesperrt",
                    }},
                    [0x0041] = { typ = "byte", name = "Luftfederabsperrhähne [bitweise kodiert, 1=abgesperrt]", },
                    [0x0042] = { typ = "byte", name = "Anzahl Luftfederabsperrhähne", },
                    [0x0043] = { typ = "byte", name = "Anzahl Türen", },
                    [0x0044] = { typ = "single", name = "Max. Bremsgewicht lastabhängige Bremse", },
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
                      [14] = "Wärterhaltscheibe",
                      [15] = "Wegverzweigung rechts",
                      [16] = "Wegverzweigung links",
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
                  },
                },
              },
            },
            [0x00A9] = {
              name = "Status Leuchtmelder für ZusiDisplay",
              nodes = {
                [0x0001] = {
                  name = "Leuchtmelder mit ZusiDisplay-Integration",
                  attributes = {
                    [0x0001] = { typ = "string", name = "Name des Leuchtmelders", },
                    [0x0002] = { typ = "byte", name = "Modus des Tastenrahmens", enum = {
                      [0] = "Grafik ohne Tastenrahmen übertragen",
                      [1] = "Grafik inkl. Tastenrahmen übertragen",
                      [2] = "Grafik inkl. Tasten übertragen",
                    }},
                    [0x0003] = { typ = "word", name = "Breite der Meldergrafik [Pixel]", },
                    [0x0004] = { typ = "word", name = "Höhe der Meldergrafik [Pixel]", },
                  },
                },
              },
            },
            [0x00AB] = {
              name = "Status Zug-Fahrdaten",
              nodes = {
                [0x0001] = {
                  name = "Fahrzeug",
                  nodes = {
                    [0x000A] = {
                      name = "Antriebssystem",
                      attributes = {
                        [0x0001] = { typ = "word", name = "Laufende Nummer des Systems", },
                        [0x0002] = { typ = "single", name = "Zugkraft [N]", },
                        [0x0003] = { typ = "single", name = "Motordrehzahl [U/min]", },
                        [0x0004] = { typ = "byte", name = "Status Motor", enum = {
                          [0] = "steht",
                          [1] = "läuft",
                          [2] = "startet",
                          [3] = "stellt ab",
                        }},
                        [0x0005] = { typ = "single", name = "Sollzugkraft [N]", },
                        [0x0006] = { typ = "word", name = "Anzahl angetriebene Achsen", },
                        [0x0007] = { typ = "single", name = "Oberstrom [A]", },
                      },
                    },
                    [0x000B] = {
                      name = "Dynamisches Bremssystem",
                      attributes = {
                        [0x0001] = { typ = "word", name = "Laufende Nummer des Systems", },
                        [0x0002] = { typ = "single", name = "Bremskraft [N]", },
                        [0x0005] = { typ = "single", name = "Sollbremskraft [N]", },
                        [0x0006] = { typ = "word", name = "Anzahl gebremste Achsen", },
                        [0x0007] = { typ = "single", name = "Oberstrom [A]", },
                      },
                    },
                    [0x0015] = {
                      name = "Türen",
                      attributes = {
                        [0x0001] = { typ = "byte", name = "Türzustand rechts Tür A", enum = tuerzustand, },
                        [0x0002] = { typ = "byte", name = "Türzustand rechts Tür B", enum = tuerzustand, },
                        [0x0003] = { typ = "byte", name = "Türzustand rechts Tür C", enum = tuerzustand, },
                        [0x0004] = { typ = "byte", name = "Türzustand rechts Tür D", enum = tuerzustand, },
                        [0x0005] = { typ = "byte", name = "Türzustand links Tür A", enum = tuerzustand, },
                        [0x0006] = { typ = "byte", name = "Türzustand links Tür B", enum = tuerzustand, },
                        [0x0007] = { typ = "byte", name = "Türzustand links Tür C", enum = tuerzustand, },
                        [0x0008] = { typ = "byte", name = "Türzustand links Tür D", enum = tuerzustand, },
                        [0x0009] = { typ = "byte", name = "Tür abgesperrt [bitweise kodiert]", },
                      },
                    },
                  },
                  attributes = {
                    [0x0001] = { typ = "single", name = "Bremszylinderdruck [bar]", },
                    [0x0002] = { typ = "single", name = "Hauptluftleitungsdruck [bar]", },
                    [0x0003] = { typ = "single", name = "Zugkraft in N", },
                    [0x0004] = { typ = "single", name = "Motordrehzahl Ⅰ [U/min]", },
                    [0x0005] = { typ = "single", name = "Max. Zugkraft bei aktueller Geschwindigkeit", },
                    [0x0006] = { typ = "single", name = "Max. dynamische Bremskraft bei aktueller Geschwindigkeit", },
                    [0x0007] = { typ = "byte", name = "Absperrhähne Hauptluftleitung", enum = {
                      [0] = "Nur an den Zugenden geschlossen)",
                      [1] = "Hahn vorne geöffnet",
                      [2] = "Hahn hinten geöffnet",
                      [3] = "Beide Hähne geöffnet",
                      [4] = "Beide Hähne zu",
                    }},
                    [0x000C] = { typ = "single", name = "Bremszylinderdruck Ⅱ [bar]", },
                    [0x000D] = { typ = "byte", name = "Absperrhähne Hauptluftbehälterleitung", enum = {
                      [0] = "Nur an den Zugenden geschlossen)",
                      [1] = "Hahn vorne geöffnet",
                      [2] = "Hahn hinten geöffnet",
                      [3] = "Beide Hähne geöffnet",
                      [4] = "Beide Hähne zu",
                    }},
                    [0x000E] = { typ = "byte", name = "Zustand Mg-Bremse", enum = {
                      [1] = "Magnet oben, nicht bestromt",
                      [2] = "Magnet unten, nicht bestromt",
                      [3] = "Magnet oben, bestromt",
                      [4] = "Magnet unten, bestromt",
                    }},
                    [0x000F] = { typ = "byte", name = "Zustand Feststellbremse", enum = {
                      [1] = "gelöst",
                      [2] = "angelegt",
                    }},
                    [0x0010] = { typ = "byte", name = "Zustand Mg-Bremsen-Manipulation [bitweise kodiert]", },
                    [0x0011] = { typ = "single", name = "Bremskraft Druckluftbremse [N]", },
                    [0x0012] = { typ = "smallint", name = "Oberstrombegrenzung [A]", },
                    [0x0013] = { typ = "byte", name = "Fahrzeug regelt Oberstrombegrenzung  automatisch", enum = boolean, },
                    [0x0014] = { typ = "byte", name = "Stromabnehmerstellung [bitweise kodiert]", },
                    [0x0016] = { typ = "byte", name = "Hauptschalter aus", enum = boolean },
                  },
                },
              },
            },
            [0x00B4] = {
              name = "Status Signale",
              nodes = {
                [0x0001] = {
                  name = "Nächstes Hauptsignal",
                  attributes = {
                    [0x0001] = { typ = "single", name = "Abstand [m]", },
                    [0x0002] = { typ = "single", name = "Zulässige Geschwindigkeit [m/s]", },
                  },
                },
              },
            },
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
            [0x0004] = { typ = "string", name = "Transfer der Buchfahrplan-Rohdatei (xml)", },
            [0x0005] = { typ = "byte", name = "Zug wurde neu übernommen", enum = boolean, },
            [0x0006] = { typ = "data", name = "Transfer des Buchfahrplans (Bilddatei)", },
            [0x0007] = { typ = "data", name = "Transfer des Buchfahrplans (pdf)", },
            [0x0008] = { typ = "data", name = "Transfer des Bremszettels (pdf)", },
            [0x0009] = { typ = "data", name = "Transfer der Wagenliste (pdf)", },
            [0x000A] = { typ = "data", name = "Transfer der La (pdf)", },
            [0x000B] = { typ = "data", name = "Transfer des Streckenbuchs (pdf)", },
            [0x000C] = { typ = "data", name = "Transfer der Ersatzfahrpläne (pdf)", },
            [0x000D] = { typ = "data", name = "Transfer Fahrplaninfo-Datei", },
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
                [0x0004] = etcs_einstellungen_interaktionen,
                [0x0008] = zbs_einstellungen_interaktionen,
                [0x000A] = fahrsperre_einstellungen_interaktionen,
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
                [0x0004] = { typ = "byte", name = "Weglängenmesser aktivieren", enum = {
                  [1] = "Weglängenmesser aktivieren",
                }},
              }
            },
            [0x0007] = {
              name = "Bremsprobe",
              attributes = {
                [0x0001] = { typ = "byte", name = "Status Bremsprobe", enum = {
                  [0] = "Keine Bremsprobe aktiv",
                  [1] = "Führerraumbremsprobe starten",
                  [2] = "Teilautomatische Bremsprobe starten",
                }},
              }
            },
            [0x0008] = {
              name = "Bremse der führenden Lok fernsteuern",
              attributes = {
                [0x0001] = { typ = "byte", name = "Kommando", enum = {
                  [1] = "Fernsteuerung beginnen",
                  [2] = "Fernsteuerung beenden",
                }},
                [0x0002] = { typ = "single", name = "Druck in der Hauptluftleitung vorgeben", },
                [0x0003] = { typ = "single", name = "Druck im Bremszylinder vorgeben", },
              }
            },
            [0x0009] = {
              name = "Weiche interaktiv stellen",
              nodes = {
                [0x0001] = {
                  name = "Weichen-Infopaket anfordern",
                  attributes = {
                    [0x0001] = { typ = "byte", name = "Vom Zugende aus", enum = boolean, },
                  },
                },
                [0x0002] = {
                  name = "Weiche umstellen",
                  attributes = {
                    [0x0001] = { typ = "string", name = "Weichenbezeichnung", },
                    [0x0002] = { typ = "byte", name = "Aktion", enum = {
                      [1] = "Weiche in Grundstellung",
                      [2] = "Weiche in Nicht-Grundstellung",
                    }},
                  },
                },
              }
            },
            [0x000A] = {
              name = "Tempomat",
              attributes = {
                [0x0001] = { typ = "single", name = "Neuer Tempomat-Sollwert [m/s]", },
                [0x0002] = { typ = "byte", name = "Tempomat aktivieren", enum = {
                  [0] = "Keine Vorgabe",
                  [1] = "an",
                  [2] = "aus",
                }},
              }
            },
            [0x000B] = {
              name = "Antriebe/Stromabnehmerwahl/Hauptschalter",
              attributes = {
                [0x0001] = { typ = "word", name = "Index des Fahrzeuges im Zugverband", },
                [0x0002] = { typ = "byte", name = "Stromabnehmerwahl [bitweise kodiert]", },
                [0x0003] = { typ = "byte", name = "Hauptschalter sperren", enum = {
                  [1] = "Hauptschalter gesperrt",
                  [2] = "Hauptschalter entsperrt",
                }},
                [0x0004] = { typ = "byte", name = "Antrieb Nr. sperren", },
                [0x0005] = { typ = "byte", name = "Antrieb Nr. entsperren", },
              }
            },
            [0x000C] = {
              name = "Bremse und Umgebung",
              attributes = {
                [0x0001] = { typ = "word", name = "Index des Fahrzeuges im Zugverband", },
                [0x0002] = { typ = "byte", name = "Bremsstellung", enum = bremsstellung, },
                [0x0003] = { typ = "byte", name = "Indirekte Bremse abziehen", enum = {
                  [0] = "Abziehen beendet",
                  [1] = "Abziehen",
                }},
                [0x0004] = { typ = "byte", name = "Absperrhähne Hauptluftleitung setzen", enum = {
                  [0] = "Nur an den Zugenden geschlossen",
                  [1] = "Hahn vorne geöffnet",
                  [2] = "Hahn hinten geöffnet",
                  [3] = "Beide Hähne geöffnet",
                  [4] = "Beide Hähne zu",
                  [5] = "Auf Default setzen",
                }},
                [0x0005] = { typ = "byte", name = "Direkte Bremse 1 setzen", enum = normalzustand_abgesperrt, },
                [0x0006] = { typ = "byte", name = "Direkte Bremse 2 setzen", enum = normalzustand_abgesperrt, },
                [0x0007] = { typ = "byte", name = "Indirekte Bremse 1 setzen", enum = normalzustand_abgesperrt, },
                [0x0008] = { typ = "byte", name = "Indirekte Bremse 2 setzen", enum = normalzustand_abgesperrt, },
                [0x0009] = { typ = "byte", name = "Federspeicherbremse 1 setzen", enum = normalzustand_abgesperrt, },
                [0x000A] = { typ = "byte", name = "Federspeicherbremse 2 setzen", enum = normalzustand_abgesperrt, },
                [0x000B] = { typ = "byte", name = "Absperrhähne Hauptluftbehälterleitung setzen", enum = {
                  [0] = "Nur an den Zugenden geschlossen",
                  [1] = "Hahn vorne geöffnet",
                  [2] = "Hahn hinten geöffnet",
                  [3] = "Beide Hähne geöffnet",
                  [4] = "Beide Hähne zu",
                  [5] = "Auf Default setzen",
                }},
                [0x000C] = { typ = "byte", name = "Mg-Bremse setzen", enum = {
                  [1] = "Prüfung starten",
                  [2] = "Prüfung beenden",
                }},
                [0x000D] = { typ = "byte", name = "Feststell-/Handbremse setzen", enum = {
                  [1] = "lösen",
                  [2] = "anlegen",
                }},
                [0x000E] = { typ = "byte", name = "Lastwechsel setzen", enum = {
                  [0] = "automatisch",
                  [1] = "leer",
                  [2] = "beladen",
                }},
                [0x000F] = { typ = "byte", name = "Nachbremsung setzen", enum = {
                  [1] = "aus",
                  [2] = "an",
                }},
                [0x0010] = { typ = "byte", name = "Luftfederabsperrhähne setzen [bitweise kodiert, 1=abgesperrt]", },
                [0x0011] = { typ = "byte", name = "Dynamische Bremse Nr. sperren", },
                [0x0012] = { typ = "byte", name = "Dynamische Bremse Nr. entsperren", },
              }
            },
            [0x001A] = {
              name = "Störungsmeldung",
              attributes = {
                [0x0001] = { typ = "byte", name = "Priorität", },
                [0x0002] = { typ = "string", name = "Text der Meldung", },
                [0x0003] = { typ = "word", name = "Kennung", },
                [0x0004] = { typ = "string", name = "Client-Intern", },
              },
            },
            [0x001E] = {
              name = "Weitere Fahrzeugsysteme",
              attributes = {
                [0x0001] = { typ = "word", name = "Index Fahrzeug im Zugverband", },
                [0x0002] = { typ = "byte", name = "Zustand Türabsperrung [bitweise kodiert]", },
                [0x0003] = { typ = "byte", name = "Prüfmodus Sander", enum = {
                  [0] = "Prüfmodus",
                  [1] = "Normalbetrieb",
                }},
              },
            },
          },
          attributes = {
            [0x000D] = { typ = "data", name = "Transfer des Bremszettels (pdf)", },
            [0x000E] = { typ = "data", name = "Transfer der Wagenliste (pdf)", },
            [0x000F] = { typ = "data", name = "Transfer der La (pdf)", },
            [0x0010] = { typ = "data", name = "Transfer des Streckenbuchs (pdf)", },
            [0x0011] = { typ = "data", name = "Transfer der Ersatzfahrpläne (pdf)", },
            [0x0012] = { typ = "smallint", name = "Index des vorzuwählenden Türsystems", enum = {
              [0] = "aus",
            }},
            [0x0013] = { typ = "smallint", name = "Index des zu deaktivierenden Antriebs", },
            [0x0014] = { typ = "smallint", name = "Index des zu aktivierenden Antriebs", },
            [0x0015] = { typ = "smallint", name = "Index des zu deaktivierenden dynamischen Bremssystems", },
            [0x0016] = { typ = "smallint", name = "Index des zu aktivierenden dynamischen Bremssystems", },
            [0x0017] = { typ = "smallint", name = "Index des zu deaktivierenden Zugbeeinflussungssystems", },
            [0x0018] = { typ = "smallint", name = "Index des zu aktivierenden Zugbeeinflussungssystems", },
            [0x0019] = { typ = "single", name = "Brh setzen", },
            [0x001B] = { typ = "cardinal", name = "Störungsmeldung Nr. quittieren", },
            [0x001C] = { typ = "cardinal", name = "Störungsmeldung Nr. beenden", },
            [0x001D] = { typ = "smallint", name = "Oberstrombegrenzung setzen", },
          },
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
                [0x0001] = { typ = "string", name = "Zugnummer", },
              },
            },
            [0x0003] = {
              name = "Zug starten",
              attributes = {
                [0x0001] = { typ = "string", name = "Dateiname des Fahrplans relativ zum Zusi-Verzeichnis", },
                [0x0002] = { typ = "string", name = "Zugnummer", },
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
            [0x000D] = {
              name = "Führerstands-Blickpunkt auf Standard",
            },
            [0x000E] = {
              name = "Fahrzeugbilder anfordern",
              attributes = {
                [0x0001] = { typ = "word", name = "Bildhöhe [Pixel]", },
                [0x0002] = { typ = "byte", name = "Seite", enum = {
                  [0] = "In Fahrtrichtung linke Seite",
                  [1] = "In Fahrtrichtung rechte Seite",
                }},
              },
            },
            [0x000F] = {
              name = "Liste der Fahrplandateien anfordern",
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
            [0x0006] = { typ = "single", name = "Simulationszeit des übertragenen Bilds (0=0h, 1=24h)" },
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

      offset = build_tree(buffer, offset, tree:add(buffer(offset - 4 - 2, 6), descr), node)
    elseif length == 0xffffffff then
      -- Node end
      tree:set_len(offset - startoffset + 4 + 2)
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

        elseif typ == "data" then
          descr = descr .. string.format(", value: data = %s", tostring(value:bytes()))

        else
          descr = descr .. string.format(", value: ? = %s", tostring(tostring(value:bytes())))
        end
      else
        descr = descr .. string.format(", value: ? = %s", tostring(value:bytes()))
      end

      tree:add(buffer(offset - 4, length + 4), descr)
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
