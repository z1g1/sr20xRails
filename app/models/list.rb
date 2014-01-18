class List < ActiveRecord::Base
  belongs_to :faction
  belongs_to :caster
  belongs_to :user
  attr_accessible :body, :size, :title, :faction_id, :caster_id, :user_id
end
