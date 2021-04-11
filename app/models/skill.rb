class Skill < ApplicationRecord
    has_many            :freelancer_skills
    has_many            :freelancer_artist_profiles, through: :freelancer_skills

end
