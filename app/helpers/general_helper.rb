module GeneralHelper
  def menu(ul_class, div_class)
    list_menu = content_tag(:ul, class: ul_class) do
      @menu.collect do |option|
        concat content_tag(:li, option)
      end
    end

    content_tag(:div, list_menu, class: div_class)
  end
end
