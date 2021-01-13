---
layout: post
title:  "CDS at the registrar level"
date:   2020-08-10
author: q
---

Setting up DNSSEC is an often tedious task, and recently (ok March 2017 but that's recent for an
internet standard), a method to automate the setup of the records needed to delegate a DNSSCE zone
boundary has been devised. I'd like to present what we think is a first in the domains sector, using it
at the registrar level.

## How does it work?

At it's core it's quite simple, the child (your DNS server) publishes a record that looks like this:
```text
website.example. 3600 IN CDS 45224 13 2 8A7BD58EF0CFA7FFD3813B28A288C69DE9D38D3B5FE71816E82AE26AF0615165
```

And after some checks and a bit of waiting the parent (the TLD operator) will publish the coresponding
record:
```
website.example. 3600 IN DS 45224 13 2 8A7BD58EF0CFA7FFD3813B28A288C69DE9D38D3B5FE71816E82AE26AF0615165
```

These are pretty much identical, but one is the responsibility of the child and is never used to
verify the legitimacy of the zone, whilst the other held by the parent is what's actually used to 
verify the zone. It's the need to insert all the DS records into the parent that makes DNSSEC tedious
to deploy, and what CDS solves.

## What are we doing?

A select few TLDs are already implementing CDS. The one's we know of are;

* .ch
* .li
* .cz
* .sz

Not much is it? So, we've decided to implement CDS at the registrar level and insert the DS records
into the parent on your behalf. This means any domain, no matter it's TLD, can make use of CDS to setup
DNSSEC if its registered with us. As far as we're aware we're the first registrar to offer such a
service, although some others have expressed interest in the past, but never implemented it.

## How do I use this?

We have a [docs page](https://docs.glauca.digital/domains/cds/) on this, giving the more technical
details of what's required by you to setup DNSSEC with CDS. Feel free to contact me if it's not clear
enough.