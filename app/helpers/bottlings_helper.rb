module BottlingsHelper

  def inventory_table(bottling)
    html = "<table>"
    html << "<tr><th>On Hand</th><th>Reserved</th><th>Available</th></tr>"
    html << "<tr><td>#{bottling.quantity_on_hand}</td><td>#{bottling.quantity_reserved}</td><td>#{bottling.quantity_available}</td></tr>"
    html << "</table>"
    html.html_safe
  end  
end
