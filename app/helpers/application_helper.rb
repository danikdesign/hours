module ApplicationHelper
  def main_menu 
    render partial: 'shared/menu'
  end
  
  # def nav_tab(title, url, options = {})
  #   current_page = options.delete :current_page

  #   css_class = current_page == title ? 'nav_link active' : 'nav_link'

  #   options[:class] = if options[:class]
  #                       "#{options[:class]} #{css_class}"
  #                     else
  #                       css_class
  #                     end

  #   link_to title, url, options
  # end

  # def currently_at(current_page = '')
  #   render partial: 'shared/menu', locals: { current_page: }
  # end

  def full_title(page_title = '')
    base_title = 'HOURS'
    if page_title.present?
      "#{page_title} | #{base_title}"
    else
      base_title
    end
  end

  def prepend_flash
    turbo_stream.prepend 'flashes', partial: 'shared/flashes'
  end
end
