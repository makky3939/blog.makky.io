---
layout: post
title:  "jekyllのindex.hamlとかを_pagesに格納する方法"
date:   2015-10-08 21:56:00
category: jekyll
---

Jekyll を使っていて、`index.haml` や `feed.xml` などのファイルがProject directoryに散らばってしまうのが気になりました。
この記事では、 `_posts/` のように機能する `_pages/` を作る方法を紹介します。

まず、Project directoryに  `_pages/` を作成します。
`index.haml` や `feed.xml`は適宜 `_pages/` に移動します。

{% highlight bash %}
mkdir _pages
{% endhighlight %}


`_pages/` をJekyllの監視対象とするための設定を `config.yml` に追加します。

{% highlight yaml %}
include:
  - _pages
{% endhighlight %}

`_pages/` 内に移動したファイルの中の `yaml front matter` を確認し、`permalink`の指定がされていないファイルが有れば、次の記述を追加します。

{% highlight yaml %}
permalink: /
{% endhighlight %}

再度ビルドを行い `_site/` に今回移動したファイル（hamlやmdはhtmlに変換済み）が配置されていれば成功です。
Project directoryがちょっとだけ綺麗になりました。
