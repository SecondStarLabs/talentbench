class FreelancerArtistProfile < ApplicationRecord
    has_many_attached   :images
    has_rich_text       :rich_notes
    has_person_name

    has_many            :freelancer_skills
    has_many            :skills, through: :freelancer_skills
    accepts_nested_attributes_for :skills

    acts_as_taggable_on :charged_rates
    acts_as_taggable_on :ability_degrees

    def skills_attributes=(skill_attributes)
        skill_attributes.values.each do |skill_attribute|
          skill = Skill.find_or_create_by(skill_attribute)
          self.skills << skill
        end
      end    
end
