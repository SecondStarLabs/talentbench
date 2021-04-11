class CreateFreelancerSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :freelancer_skills do |t|
      t.belongs_to :freelancer_artist_profile, null: false, foreign_key: true
      t.belongs_to :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
