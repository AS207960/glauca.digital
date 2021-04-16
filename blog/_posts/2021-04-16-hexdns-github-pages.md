---
layout: post
title:  "Deploy GitHub Pages directly within HexDNS"
date:   2021-04-16
author: q
---

Setting up GitHub Pages on a custom domain can be a bit annoying sometimes,
with switching between tabs and different UIs resulting in far too many
button clicks for what should be a simple job. That's why today we're 
announcing support for managing GitHub Pages deployments directly
within HexDNS.

For a while now we had a "Setup for GitHub Pages" button which would
insert the required address records for GitHub Pages custom domain hosting,
avoiding some error prone copying of IP addresses. We did however feel
this was only a half solution and still required too much back and forth.

What we're announcing today is that HexDNS can do almost the entire process
for you, and you never even have to open your repository in GitHub.
We're using GitHub Apps to make this possible with its extremely granular
permissions support, so we can't write or manage your repositories
in any way other than to manage Pages for them. 
You can also decide to only allow HexDNS access to certain repositories 
that you want to manage GitHub Pages for.

When you create a GitHub Pages record in HexDNS it'll enable Pages on the
select repository, and configure the custom domain in GitHub, all in
3 clicks!

We're not getting rid of the ability to just create a record for GitHub
Pages without linking your GitHub account, as we totally understand not 
wanting to hand over access purely for a convenience feature. This will
continue working as before, just without the niceties that come with 
linking your GitHub account.

As with all new features we don't expect it to work absolutely perfectly
right away (we have tested it though, promise), so if anything doesn't work
we're really sorry and please do tell us, we'll do our best to fix it
swiftly.

So, what are you waiting for? Go ahead and try it out, and don't forget to
tell us what you think!