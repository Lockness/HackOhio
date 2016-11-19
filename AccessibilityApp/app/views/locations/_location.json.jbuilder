json.extract! location, :id, :name, :lat, :long, :placeid, :created_at, :updated_at
json.url location_url(location, format: :json)