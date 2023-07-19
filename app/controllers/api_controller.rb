class ApiController < ApplicationController

  def coords_to_weather_form
    render({ :template => "api_templates/coords_to_weather_form"})
  end

  def coords_to_weather
    @lat = params.fetch("user_latitude").strip
    @lng = params.fetch("user_longitude").strip

    key = ENV.fetch("PIRATE_WEATHER_KEY")

    api_url = "https://api.pirateweather.net/forecast/"+ key + "/" + @lat + "," +  @lng
    
    response = open(api_url).read
    
    results = JSON.parse(response)

    @current_temperature = results.fetch("currently").fetch("temperature")

    @current_summary = results.fetch("currently").fetch("summary")

    @summary_of_next_sixty_minutes = results.fetch("minutely").fetch("summary")

    @summary_of_next_several_hours = results.fetch("hourly").fetch("summary")

    @summary_of_next_several_days = results.fetch("daily").fetch("summary")

    render({ :template => "api_templates/coords_to_weather_results"})
  end

  def street_to_coords
    @street_address = params.fetch("user_street_address")
    sanitized_street_address = URI.encode(@street_address)

    api_key = ENV.fetch("GMAPS_KEY")

    url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + sanitized_street_address + "&key=" + api_key

    data = open(url).read
    parsed_data = JSON.parse(data)
    location = parsed_data.fetch("results").at(0).fetch("geometry").fetch("location")
    @latitude = location.fetch("lat")

    @longitude = location.fetch("lng")

    render({ :template => "api_templates/street_to_coords_results"})
  end

  def street_to_coords_form
    render({ :template => "api_templates/street_to_coords_form"})
  end

  def street_to_weather
    @street_address = params.fetch("user_street_address").strip
    sanitized_street_address = URI.encode(@street_address)

    gmaps_key = ENV.fetch("GMAPS_KEY")

    url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + sanitized_street_address + "&key=" + gmaps_key

    data = open(url).read
    parsed_data = JSON.parse(data)
    location = parsed_data.fetch("results").at(0).fetch("geometry").fetch("location")
    latitude = location.fetch("lat").to_s

    longitude = location.fetch("lng").to_s

    api_key = ENV.fetch("PIRATE_WEATHER_KEY")

    api_url = "https://api.pirateweather.net/forecast/"+ api_key + "/" + latitude + "," +  longitude
    
    response = open(api_url).read
    # GMAPS_KEY=AIzaSyB92cYxPcYqgjwBJfWlwDQw_7yjuyU3tpA
    results = JSON.parse(response)

    @current_temperature = results.fetch("currently").fetch("temperature")

    @current_summary = results.fetch("currently").fetch("summary")

    @summary_of_next_sixty_minutes = results.fetch("minutely").fetch("summary")

    @summary_of_next_several_hours = results.fetch("hourly").fetch("summary")

    @summary_of_next_several_days = results.fetch("daily").fetch("summary")

    render({ :template => "api_templates/street_to_weather_results"})
  end

  def street_to_weather_form
    render({ :template => "api_templates/street_to_weather_form"})
  end
end
