# tcp_dissector
Wireshark dissector for the Zusi 3 TCP protocol

[Installation instructions](http://web.archive.org/web/20170606173544/https://delog.wordpress.com/2010/09/27/create-a-wireshark-dissector-in-lua/)

1. Edit and save the zusi3_tcp.lua script above to any folder (e.g. C:\Program Files (x86)\Zusi3\_Tools)
2. Open init.lua in the Wireshark installation directory for editing. You will need Administrator privileges on Windows.
3. If present, comment out the following line in init.lua (single line comments begin with -- ):
```
    disable_lua = true; do return end;
```
4. Add the following lines to init.lua (at the very end):
```
    ZUSI_SCRIPT_PATH="C:\\Program Files (x86)\\Zusi3\\_Tools\\"
    dofile(ZUSI_SCRIPT_PATH.."zusi3_tcp.lua")
```
5. Run Wireshark
6. Load a capture file that has the packets of ZusiDisplay or Zusi-Fahrpult network traffic or start a live capture
7. Use the capture filter `port 1436`
8. Use the display filter `tcp.len > 0 && zusi3_tcp`