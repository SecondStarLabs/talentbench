class AddFirstNameToFreelancerArtistProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :freelancer_artist_profiles, :first_name, :string
  end
end
