class CastersController < ApplicationController
	def new
		#@caster = Caster.new
		@factions = Faction.all
	end

	def create 
		#render text: params[:caster].inspect		
	  @caster = Caster.new(caster_params)
		
		@caster.save
	  redirect_to @caster
		#@caster = Caster.new(caster_params)
 
		#if @caster.save
		#	redirect_to @caster
		#else
		#  render 'new'
		#end
	end

	def destroy
	  @caster = Caster.find(params[:id])
	  @caster.destroy
 
		redirect_to casters_path
	end

	def edit
		@caster = Caster.find(params[:id])
	end

	def index
		@casters = Caster.order(faction_id: :asc).all
	end

	def show
		@caster = Caster.find(params[:id])
		@faction = Faction.find(@caster.faction_id)
	end

private
  def caster_params
    params.require(:caster).permit(:title,:faction_id)
  end
end
