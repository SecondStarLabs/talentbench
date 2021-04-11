class CreateFreelancerArtistProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :freelancer_artist_profiles do |t|
      t.string :name
      t.string :country_alpha2
      t.string :pay_rate
      t.string :availability
      t.text   :website_url

      t.timestamps
    end
  end
end
