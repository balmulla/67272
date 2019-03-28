json.extract! store, :id, :name, :type, :opening_time, :closing_time, :longitude, :latitude, :created_at, :updated_at
json.url store_url(store, format: :json)
