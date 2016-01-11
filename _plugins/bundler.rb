require 'rubygems'
require 'bundler/setup'

Bundler.require :default

Haml::Options.defaults[:remove_whitespace] = true

module Jekyll
  class ImageTag < Liquid::Tag
    def initialize(tag_name, argvs, tokens)
      super
      @name, @thumbnail, @src = argvs.split

      if @src.nil?
        @src = @thumbnail
      end
    end

    def render(context)
      "<div class='row'><div class='col-md-12'><div class='card'><img src='#{@thumbnail}' class='card-img-top' width='100%' height='auto' /><div class='card-block text-xs-right'><a href='#{@src}' target='_blank'>#{@name}</a></div></div></div></div>"
    end
  end
end

Liquid::Template.register_tag('image', Jekyll::ImageTag)
