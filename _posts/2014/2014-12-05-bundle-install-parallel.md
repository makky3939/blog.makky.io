---
layout: post
title:  "bundle installを並列実行する"
date:   2014-12-05 00:07:53
category: ruby
---

bundle installを並列実行する方法を毎回調べて設定しているので、メモ

{% highlight bash %}
bundle config --global jobs 4
{% endhighlight %}
