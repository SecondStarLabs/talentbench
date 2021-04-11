class AddLastNameToFreelancerArtistProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :freelancer_artist_profiles, :last_name, :string
  end
end
