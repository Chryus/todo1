json.array!(@dust_baths) do |dust_bath|
  json.extract! dust_bath, :id
  json.url dust_bath_url(dust_bath, format: :json)
end
