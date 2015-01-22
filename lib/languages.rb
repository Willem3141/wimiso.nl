include Nanoc::Helpers::LinkTo

LANGUAGE_CODE_TO_NAME_MAPPING = {
  'nl' => 'Nederlands',
  'en' => 'English',
  'x-navi' => 'Lì\'fya leNa\'vi',
}


LANGUAGES = [ 'nl', 'en', 'x-navi' ]

DEFAULT_LANGUAGE = 'nl'

def language_prefix_of(item)
  if item[:language] == DEFAULT_LANGUAGE then
    ''
  else
    "/#{item[:language]}"
  end
end

# Returns the langage name corresponding to a code
def language_name_for_code(code)
  LANGUAGE_CODE_TO_NAME_MAPPING[code]
end


# Returns all translations of an item
def translations_of(item)
  @items.select do |i|
    # this selects all items with the same id
    i[:id] == item[:id]
  end.sort! do |a, b|
    language_name_of(a) <=> language_name_of(b)
  end
end


# Returns the language name of an item
def language_name_of(item)
  language_name_for_code item[:language]
end


# Returns a link URL staying within the current language
def localized_url(id)
  
  translated_item = @items.find do |i|
    i[:id] == id and i[:language] == @item[:language]
  end
  
  if translated_item == nil then
    translated_item = @items.find do |i|
      i[:id] == id and i[:language] == "en"
    end
  end
  
  if translated_item == nil then
    puts "Warning: dead link to '#{id}' from page '#{@item[:id]}'"
    return ""
  end
  
  translated_item.path
end


LAYOUT_TRANSLATIONS = {
  :my_website => {'nl' => 'Mijn website :)', 'en' => 'My website :)', 'x-navi' => 'Tsenge oeyä :)'},
  :footer_text => {'nl' => 'Gemaakt met <a href="http://getbootstrap.com">Bootstrap</a> en <a href="http://nanoc.ws">nanoc</a>.',
                   'en' => 'Created using <a href="http://getbootstrap.com">Bootstrap</a> and <a href="http://nanoc.ws">nanoc</a>.',
                   'x-navi' => 'Ngolop fa aysä\'o alu <a href="http://getbootstrap.com">Bootstrap</a> sì <a href="http://nanoc.ws">nanoc</a>.'},
  
  :study => {'nl' => 'Studie', 'en' => 'Study', 'x-navi' => 'Tìftia'}, # not used at the moment
  :software => {'nl' => 'Software', 'en' => 'Software', 'x-navi' => 'Ayvefya'},
  :hobbies => {'nl' => 'Hobby\'s', 'en' => 'Hobbies', 'x-navi' => 'Tìk\'ìn'}, # not used at the moment
  :projects => {'nl' => 'Projecten', 'en' => 'Projects', 'x-navi' => 'Sìkangkemvi'},
  
  :read_more => {'nl' => 'Verder lezen', 'en' => 'Read more', 'x-navi' => 'Nì\'ul'},
  :comments => {'nl' => 'Reacties', 'en' => 'Comments', 'x-navi' => 'Tìpängkxo'},
  :tag => {'nl' => 'Tag', 'en' => 'Tag', 'x-navi' => 'Txele alu'},
}


# Returns a translation of an element suitable for a given item
def _(element)
  LAYOUT_TRANSLATIONS[element][@item[:language]]
end
