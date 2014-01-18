class FactionsController < ApplicationController
	def index
		@factions = Faction.all 
	end

	def show
		@faction = Faction.find(params[:id])
		@casters = Caster.where("faction_id = ?", params[:id])
	end
	
	def new
		@faction = Faction.new
	end

	def create 
	  @faction = Faction.new(faction_params)
 
		if @faction.save
			redirect_to @faction
		else
		  render 'new'
		end
	end

	def destroy
	  @faction = Faction.find(params[:id])
	  @faction.destroy
 
		redirect_to factions_path
	end

	def edit
		@faction = Faction.find(params[:id])
	end

	def update_attribute
	  @faction = Faction.find(params[:id])
 
	  if @faction.update(params[:faction].permit(:logo, :system, :title ))
	    redirect_to @faction
	  else
		  render 'edit'
	  end
	end
private
  def faction_params
    params.require(:faction).permit(:logo, :system, :title )
  end
end
