class FactionsController < ApplicationController
	def index
		@factions = Faction.all
	end

	def show
		@faction = Faction.find(params[:id])
		@casters = Caster.where("faction_id = ?", params[:id])
	end
	
	def new
    authorize! :index, @user, :message => 'Not authorized to create faction.'		
		@faction = Faction.new
	end

	def create 
    authorize! :index, @user, :message => 'Not authorized to create faction.'		
	  @faction = Faction.new(faction_params)
 
		if @faction.save
			redirect_to @faction
		else
		  render 'new'
		end
	end

	def destroy
    authorize! :index, @user, :message => 'Not authorized to destroy faction.'		
	  @faction = Faction.find(params[:id])
	  @faction.destroy
 
		redirect_to factions_path
	end

	def edit
    authorize! :index, @user, :message => 'Not authorized to edit faction.'		
		@faction = Faction.find(params[:id])
	end

	def update
    authorize! :index, @user, :message => 'Not authorized to update faction.'		
	  @faction = Faction.find(params[:id])
 
	  if @faction.update_attributes(params[:faction].permit(:logo, :system, :title ))
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
