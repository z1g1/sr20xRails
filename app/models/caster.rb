class Caster < ActiveRecord::Base
  belongs_to :faction
  attr_accessible :title
end
