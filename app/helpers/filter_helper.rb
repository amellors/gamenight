module FilterHelper
  def active_filter
    case session[:filter]
    when "Tuesday"
      "Tuesday"
    when "Cape"
      "Cape"
    else
      "" 
    end
  end
  
  def filter_dropdown
    case session[:filter]
    when "Tuesday"
      menu_item('All', all_path) + menu_item('Cape', cape_path)
    when "Cape"
      menu_item('All', all_path) + menu_item('Tuesday', tuesday_path)
    else
      menu_item('Tuesday', tuesday_path) + menu_item('Cape', cape_path)
    end
  end
end
