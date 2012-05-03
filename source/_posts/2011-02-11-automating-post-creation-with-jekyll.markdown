--- 
layout: post
title: Automating Post Creation with Jekyll
published: true
comments: true
---
So! As you may have noticed, I recently completely overhauled my blog.
New design, new backend ([GitHub Pages](http://pages.github.com/) + 
[Jekyll](https://github.com/mojombo/jekyll)), and new comment system
([Disqus](http://www.disqus.com/)). I'm working on migrating comments
over from Posterous right now, so those should be back up soon.

Jekyll is a static page generator written in Ruby. It does a fantastic
job at making blogging a breeze without the need for something like
WordPress or Posterous, and with GitHub Pages, you don't have to drop a
dime on hosting it anywhere. It is very simple, and that leads to what
is my only real complaint about it: there is no good way to
automagically generate posts. That is, there wasn't, until I wrote a
neat little script to do it for me!

<!-- more -->

Here it is:

<script src="https://gist.github.com/823013.js?file=newpost.rb">
</script>

Just drop that file in the root of your Jekyll site, and use it like this:
"./newpost.rb POST TITLE" (the title may contain
any number of spaces and characters as you want - the script utilizes
the String#parameterize function from
[Rails](https://github.com/rails/rails), which will replace spaces and
special characters). For example, if you run:

    ./newpost.rb My Test Post

That will generate a file in your posts folder with a name like
"2011-02-11-my-test-post.markdown." The post is generated based off of a
markdown template, called "template.markdown," in the root of your
Jekyll site. Mine looks like this:

<script src="https://gist.github.com/823013.js?file=template.markdown">
</script>

If you want to use an HTML or Textile template, just rename
"template.markdown" to "template.html\_or\_textile" and change the
TEMPLATE constant in newpost.rb to "template.html\_or\_textile".

Happy Jekyll-ing!

ck
