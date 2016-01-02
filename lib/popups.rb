class PopupFilter < Nanoc::Filter
  identifier :popups

  def run(content, params = {})
    content.gsub(/\{([^\\]*)\\([^\}]*)\}/, '<span class="translated" data-toggle="tooltip" title="\2">\1</span>')
  end
end