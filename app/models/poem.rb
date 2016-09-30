class Poem < ActiveRecord::Base
  extend FriendlyId
    friendly_id :name, use: [:slugged]
    def should_generate_new_friendly_id
      slug.blank? || poem_changed?
    end
  has_many :lines
end
