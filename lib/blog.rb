def sorted_articles_in_language(lang)
  sorted_articles.select do |i|
    i[:language] == lang && !i[:draft]
  end
end

def sorted_articles_in_language_tag(lang, tag)
  items_with_tag(tag).select do |i|
    i[:language] == lang && !i[:draft]
  end
end

def get_post_start(post)
  if post[:summary] then
    post[:summary] +
      "<div class='read-more'><a href='#{post.path}'>#{_(:read_more)} &rsaquo;</a></div>"
  else
    content = post.compiled_content
    if content =~ /\s<!-- more -->\s/
      content = content.partition('<!-- more -->').first +
      "<div class='read-more'><a href='#{post.path}'>#{_(:read_more)} &rsaquo;</a></div>"
    end
    content
  end
end
