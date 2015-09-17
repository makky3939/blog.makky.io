---
layout: post
title:  "gem install libv8 に失敗する時"
date:   2014-11-22 20:58:56
category: ruby
---

## 問題

こんなエラーが出て bundle install に失敗する場合

{% highlight bash %}
An error occurred while installing libv8 (3.16.14.3), and Bundler cannot continue.
Make sure that `gem install libv8 -v '3.16.14.3'` succeeds before bundling.
{% endhighlight %}

## 解決方法
{% highlight bash %}
gem install libv8 -v '3.16.14.3' -- --with-system-v8
{% endhighlight %}
