module ApplicationHelper
  def static_map_for(location, options = {})
    params = {
      :center => [location.latitude, location.longitude].join(","),
      :zoom => 13,
      :size => "640x640",
      :markers => [location.latitude, location.longitude].join(","),
      :sensor => true
      }.merge(options)

    query_string =  params.map{|k,v| "#{k}=#{v}"}.join("&")
    image_tag "http://maps.googleapis.com/maps/api/staticmap?#{query_string}&key=AIzaSyDzZ-zydcqp5gTQyAmoNyT-Kem6aiJIE3Y", :alt => location.title
  end
end
