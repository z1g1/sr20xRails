class Mission < ActiveRecord::Base
  belongs_to :packet
  attr_accessible :map, :name, :objective, :specialRules, :tacticalTips, :victory, :packet_id
end
