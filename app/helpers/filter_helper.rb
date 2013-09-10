module FilterHelper
  def filter_links
    case session[:filter]
    when "Tuesday"
      link_to('All', all_path) + ' | Tuesday | ' + link_to('Cape', cape_path)
    when "Cape"
      link_to('All', all_path) + ' | ' + link_to('Tuesday', tuesday_path) + ' | Cape'
    else
      link_to('Tuesday', tuesday_path) + ' | ' + link_to('Cape', cape_path) 
    end
  end
end
