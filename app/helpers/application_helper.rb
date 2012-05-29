module ApplicationHelper

  def back_link(path)
    link_to "&larr; Back".html_safe, path
  end

  def sort_link(text, param)
    key = param.to_s
    key += "_rev" if params[:sort] == key
    url_params = { :action => "index", :sort => key }
    url_params.merge!({:query => params[:query]}) if params[:query].present?
    link_to(text, url_params, :title => "Sort by this field")
  end

  def handle_sorting(klass, *columns)
    
    items_per_page = 10

    sort = nil
    columns.each do |column|
      sort = "#{column} ASC" if params[:sort] == column.to_s
      sort = "#{column} DESC" if params[:sort] == "#{column.to_s}_rev"
    end
    conditions = params[:query] ? ["LOWER(name) LIKE ?", "%#{params[:query].downcase}%"] : ""

    if (sort.present? || conditions.present?)
      Object.const_get(klass.to_s.camelize).where(conditions).order(sort).paginate(:page => params[:page], :per_page => items_per_page)
    else 
      Object.const_get(klass.to_s.camelize).all.paginate(:page => params[:page], :per_page => items_per_page)
    end
  end
end