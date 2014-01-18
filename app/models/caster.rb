class Caster < ActiveRecord::Base
  belongs_to :faction
  attr_accessible :title
	validates :title, presence: true, length: { minimum: 5 }
end
