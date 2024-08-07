# tcp_dissector
Wireshark dissector for the Zusi 3 TCP protocol

**The Zusi 3 TCP protocol regularly changes in backwards-incompatible ways (e.g. by redefining IDs with a different data type). Be sure to use a version of the dissector that matches your Zusi version.**

To install, copy `zusi3_tcp.lua` to one of the [Wireshark plugin folders](https://www.wireshark.org/docs/wsug_html_chunked/ChPluginFolders.html). You are then able to use the display filter `zusi3_tcp` in Wireshark.
