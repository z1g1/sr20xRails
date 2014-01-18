class FactionsController < ApplicationController
	def index
		@factions = Faction.all 
	end

	def show
		@faction = Faction.find(params[:id])
		@casters = Caster.where("faction_id = ?", params[:id])
	end

end
