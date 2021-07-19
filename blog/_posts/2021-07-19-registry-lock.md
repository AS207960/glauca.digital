---
layout: post
title:  "What is registry lock?"
date:   2021-07-19
author: q
---

Your domain name is vital to your business. Most businesses simply cannot
operate without their domain name. Its only natural to want to protect
this most vital business asset. Registry lock is a solution for that.

Domains can be lost in one of two major ways; forgetting to renew, or
domain hijacking. The former can be solved by making sure to enable 
auto-renew for domains (Glauca does by default, so no need to worry there).
The latter is a more complicated problem to solve, as a domain can be
stolen in many ways.

One basic (and fee) way to help secure your domain is to set a transfer
lock on it. This will automatically reject any requests to transfer a
domain out, but it won't save you from a malicious employee, or a socially
engineered support agent from changing your NS records to point somewhere
else. This is where registry lock comes in, a layer of security and peace
of mind, implemented outside the normal ways to update a domain. 

## What does registry lock do?

Put simply registry lock ensures that absolutely no changes can be made
to your domain without first unlocking it.

When you want to make changes to your domain you'll need to login with
your SSO account and then authenticate again with the WebAuthN key
specific for that domain. You'll then be able to unlock your domain
for updates for the next 24 hours, or lock it back once you're done.

When a domain is locked with registry lock updates can't be performed by
anyone, including us or the registry. You can be sure your domain
will stay exactly how you left it.

## How do we ensure this security?

When registry lock is first setup you'll register a set of WebAuthN keys
that are allowed to control registry lock for the domain. These would
usually be given to high level trusted people or for maximum security
locked in a safe.

Once an authenticated request is received, it's passed onto a trusted
high level person in Glauca, who will contact the registry directly to
request the domain be unlocked. This happens out of band of our normal
automated systems to ensure an unlikely compromise of those won't affect
your domain security. This manual processing can result in a request to 
(un)lock a domain taking a few hours to process.

## Why even bother with all this?

Great question! If you don't see the value in oll of this that's fine.
Registry lock is great for business critical websites, but maybe not quite
ideal for your little personal blog.

In the end it's a matter of weighing up how much a lost domain would cost
you vs the cost of implementing registry lock.

## Where do I sign up?

Registry lock isn't currently generally available with Glauca, but
we'd be interested to hear from you if you'd like to use it. More 
information on what TLDs are supported is available
[in our docs](https://docs.glauca.digital/domains/registry-lock/).

Fill out the form below to express your interest;

<iframe src="https://docs.google.com/forms/d/e/1FAIpQLScE-KejOaG4wRt0qVm9rKIyzDo_3wxWgeuF5lP-E_Y-T3Ttew/viewform?embedded=true" width="100%" height="1400" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe>
