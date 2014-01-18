class MissionsController < ApplicationController

	def new
		@mission = Mission.new
	end
	
	def create
    authorize! :index, @user, :message => 'Not authorized as an administrator.'		
	  @mission = Mission.new(mission_params)
	  
		if @mission.save
			redirect_to @mission
		else
			render 'new'
		end
	end
	
	def edit
    authorize! :index, @user, :message => 'Not authorized as an administrator.'		
	  @mission = Mission.find(params[:id])
	end

	def update
    authorize! :index, @user, :message => 'Not authorized as an administrator.'		
		@mission = Mission.find(params[:id])
	
		if @mission.update_attributes(params[:mission].permit(:packet, :name, :victory, :specialRules, :tacticalTips, :map, :objective))
	  else
			render 'edit'
	  end
	end		

	def destroy
    authorize! :index, @user, :message => 'Not authorized as an administrator.'		
		@mission = Mission.find(params[:id])
	  @mission.destroy
 
	  redirect_to mission_path
	end

	def index
		@missions = Mission.all
	end

	def show
		@mission = Mission.find(params[:id])
	end

	private
  def mission_params
    params.require(:mission).permit(:packet, :name, :victory, :specialRules, :tacticalTips, :map, :objective)
  end
end
