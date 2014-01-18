class CastersController < ApplicationController
	def index
		@casters = Caster.order(faction_id: :asc).all
	end

	def show
		@caster = Caster.find(params[:id])
		@faction = Faction.find(@caster.faction_id)
	end

end
