class MissionsController < ApplicationController

	def index
		@missions = Mission.where("packet = 'Standard' AND created_at > '2013'")
	end

	def show
		@mission = Mission.find(params[:id])
	end

	def new
    authorize! :index, @user, :message => 'Not authorized to create new mission.'		
		@mission = Mission.new
	end
	
	def create
    authorize! :index, @user, :message => 'Not authorized to create new missions.'		
	  @mission = Mission.new(mission_params)
	  
		if @mission.save
			redirect_to @mission
		else
			render 'new'
		end
	end
	
	def edit
    authorize! :index, @user, :message => 'Not authorized to edit missions.'		
	  @mission = Mission.find(params[:id])
	end

	def update
    authorize! :index, @user, :message => 'Not authorized to update missions an administrator.'		
		@mission = Mission.find(params[:id])
	
		if @mission.update_attributes(params[:mission].permit(:packet, :name, :victory, :specialRules, :tacticalTips, :map, :objective))
	  else
			render 'edit'
	  end
	end		

	def destroy
    authorize! :index, @user, :message => 'Not authorized to destroy missions.'		
		@mission = Mission.find(params[:id])
	  @mission.destroy
 
	  redirect_to mission_path
	end

	private
  def mission_params
    params.require(:mission).permit(:packet, :name, :victory, :specialRules, :tacticalTips, :map, :objective)
  end
end
