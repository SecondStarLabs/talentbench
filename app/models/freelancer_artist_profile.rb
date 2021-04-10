class FreelancerArtistProfile < ApplicationRecord
    has_many_attached   :images
    has_rich_text       :rich_notes

    has_many            :freelancer_skills
    has_many            :skills, through: :freelancer_skills

end
