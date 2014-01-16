class Mission < ActiveRecord::Base
  attr_accessible :map, :name, :objective, :packet, :specialRules, :tacticalTips, :victory
end
