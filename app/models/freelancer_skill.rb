class FreelancerSkill < ApplicationRecord
  belongs_to :freelancer_artist_profile
  belongs_to :skill
end
