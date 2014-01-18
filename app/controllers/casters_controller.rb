class CastersController < ApplicationController
	def index
		@casters = Caster.order(faction_id: :asc).all
	end

	def show
		@caster = Caster.find(params[:id])
		@faction = Faction.find(@caster.faction_id)
	end

	def new
    authorize! :index, @user, :message => 'Not authorized to create caster.'		
		@caster = Caster.new
		@factions = Faction.all
	end

	def create 
    authorize! :index, @user, :message => 'Not authorized to craete caster.'		
	  @caster = Caster.new(caster_params)
 
		if @caster.save
			redirect_to @caster
		else
		  render 'new'
		end
	end

	def destroy
    authorize! :index, @user, :message => 'Not authorized to destroy caster.'		
	  @caster = Caster.find(params[:id])
	  @caster.destroy
 
		redirect_to casters_path
	end

	def edit
    authorize! :index, @user, :message => 'Not authorized to edit caster.'		
		@caster = Caster.find(params[:id])
		@faction = Faction.find(@caster.faction_id)
	end

	def update
    authorize! :index, @user, :message => 'Not authorized to update caster.'		
	  @caster = Caster.find(params[:id])
 
	  if @caster.update_attributes(params[:caster].permit(:title, :faction_id))
	    redirect_to @caster
	  else
		  render 'edit'
	  end
	end

private
  def caster_params
    params.require(:caster).permit(:title,:faction_id)
  end
end
