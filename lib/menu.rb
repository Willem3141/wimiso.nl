# Generates a menu link for an item, in the current language if that exists,
# or else in another language
def menu_link_to(id)
  
  link = menu_link_in_language(id, language_code_of(@item))
  link ||= menu_link_in_language(id, "en", fallback=true)
  link ||= menu_link_in_language(id, "nl", fallback=true)
  link
end

# Generates a menu link for an item in a certain language
def menu_link_in_language(id, lang, fallback=false)
  linked_item = find_item(id, lang)
  
  if linked_item
    if @item == linked_item then
      "<li class='active'><a>#{label_of linked_item}</a></li>"
    else
      "<li><a href='#{relative_path_to linked_item}'>#{label_of linked_item}#{if fallback then " <i>(#{lang})</i>" end}</a></li>"
    end
  else
    nil
  end
end


def submenu_to(label, ids)
  
  active = ids.any? do |id|
    @item[:id] == id
  end
  
  result = "<li class='#{if active then "active" end} dropdown'>"
  result += "<a href='#' class='dropdown-toggle' data-toggle='dropdown'>#{_ label} <span class='caret'></span></a>"
  result += "<ul class='dropdown-menu' role='menu'>"
  
  ids.each do |id|
    result += menu_link_to(id)
  end
  
  result += "</ul>"
  result += "</li>"
  
  result
end


def find_item(id, lang)
  @items.find do |i|
    i[:id] == id && language_code_of(i) == lang
  end
end


# Returns the menu label of an item
def label_of(item)
  item[:title]
end
