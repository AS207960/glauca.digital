---
layout: post
title:  "Managing CDS records on HexDNS"
date:   2021-03-16
author: q
---

Sometimes you'll want to move your DNS to a different provider, and managing
DNSSEC during that transition can be a huge pain.

You might be moving to HexDNS (yay!) or move away from HexDNS (we're not
crying, promise) and want to maintain DNSSEC, or cleanly disable DNSSEC
if the new provider doesn't support it (boo).

CDS is something we've 
[discussed previously on our blog](/blog/2020/08/10/cds-at-the-registrar-level),
but in summary its a way to indicate up the DNS chain how DNSSEC should be
configured.

HexDNS already automatically publishes CDS records to automatically setup
DNSSEC for all zones hosted with HexDNS where the parent supports 
CDS.

However, when moving to or from a DNS provider it can be difficult to ensure
DNSSEC stays functional, so we've setup a way to manage the CDS and CDNSKEY
records that HexDNS publishes to ensure a smooth transition. More info on
exactly how this works can be found on 
[our docs](https://docs.glauca.digital/hexdns/cds/).

This feature is still in the beta stage so don't expect absolute perfection,
but we think its functional enough to let people try it out. As always if 
you have any feedback don't hesitate to contact us. We love hearing what our
clients think!  