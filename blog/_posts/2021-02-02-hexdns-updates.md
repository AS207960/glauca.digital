---
layout: post
title:  "A small update to HexDNS"
date:   2021-02-02
author: q
---

Until recently our DNS service (HexDNS) would not serve zones as authoritative without 
NS records in the parent pointing to our DNS servers.

It was initially set up that way to help counter zone squatting or other, shall we say,
unwanted behaviour by less well meaning clients. 

After some complaints from clients about this causing difficulty in transferring zones
into HexDNS without DNS service interruption, we discussed some possible solutions and
their ramifications internally, and with out clients.

I'm glad to say that we've now completely removed the need to have a zone detected as
active to have it served by HexDNS.

As always if you think there's anything else we could do differently please do get in
touch as we're always looking to improve to best suite our clients.