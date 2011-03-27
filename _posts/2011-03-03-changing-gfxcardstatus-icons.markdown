--- 
layout: post
title: Changing gfxCardStatus Icons
published: true
---

Alright. So there have been a lot of people contacting me saying that they 
don't like the "d" over the "n" that gfxCardStatus used to show when the 
NVIDIA GPU was active on 2010 MacBook Pros. If you're one of those people, 
I'm sorry. I didn't mean to upset anyone. Consistency is one of my main goals, 
and moving toward a standardized icon system is one of the ways I was trying 
to do just that.

The good news is that you can actually change it back yourselves! Just follow 
these steps:

- Control click on gfxCardStatus.app and hit "Show Package Contents"
- Go to Contents > Resources
- Delete or rename discrete-3.png and discrete-3-white.png to something else
- Rename nvidia-3.png and nvidia-3-white.png to discrete-3.png and discrete-3-white.png

Now, instead of showing the "d," gfxCardStatus will proudly show an "n" once 
again when your discrete GPU is active.

**UPDATE:** gfxCardStatus user Kevin (in the comments) has created an
"a" icon for those with new 2011 MacBook Pros! Grab them here: http://cl.ly/2v3g1q050S3z0f3i1P3I

Thanks for your feedback, everyone!

ck
