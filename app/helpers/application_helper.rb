module ApplicationHelper

  def icon_link(text, icon_class)
    "<i class='#{icon_class}'></i> #{text}".html_safe
  end

end
