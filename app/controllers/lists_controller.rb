class ListsController < ApplicationController
	def new
		@user = current_user
		@list = List.new
	end 

	def create
		@user = current_user
		params[:list][:user_id]= @user.id 
		@list = List.new(list_params)
	  if @list.save
			redirect_to @list
		else
			render 'new'
		end
	end

	def index
		@lists = List.all
	end

	def show
		@list = List.find(params[:id])
		@faction = Faction.find(@list.faction_id)
		@caster = Caster.find(@list.caster_id)
		@author = User.find(@list.user_id)
	end

	def edit
		@list = List.find(params[:id])
		@faction = Faction.find(@list.faction_id)
		@caster = Caster.find(@list.caster_id)
		@author = User.find(@list.user_id)
	end

	def update
		@list = List.find(params[:id])
 
	  if @list.update_attributes(params[:list].permit(:title,:body,:size,:faction_id,:caster_id,:user_id))
		  redirect_to @list
	  else
	    render 'edit'
	  end
	end
	def destroy
		@list = List.find(params[:id])
	  @list.destroy
 
	  redirect_to lists_path
	end
	private
		def list_params
			params.require(:list).permit(:title,:body,:size,:faction_id,:caster_id,:user_id)
	  end
end
