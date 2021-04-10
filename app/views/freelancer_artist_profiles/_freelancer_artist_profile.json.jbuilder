json.extract! freelancer_artist_profile, :id, :name, :country_alpha2, :pay_rate, :availability, :notes, :website_url, :created_at, :updated_at
json.url freelancer_artist_profile_url(freelancer_artist_profile, format: :json)
