def sorted_articles_in_language(lang)
    sorted_articles.select do |i|
        language_code_of(i) == lang && !i[:draft]
    end
end

def get_post_start(post)
  content = post.compiled_content
  if content =~ /\s<!-- more -->\s/
    content = content.partition('<!-- more -->').first +
    "<div class='read-more'><a href='#{post.path}'>#{_(:read_more)} &rsaquo;</a></div>"
  end
  content
end
