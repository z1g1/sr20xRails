class ListsController < ApplicationController
	def new
		@user = current_user
		@list = List.new
	end 

	def create
		@list = List.new(list_params)
	  if @list.save
			redirect_to @list
		else
			render 'new'
		end
	end

	def index
		@lists = List.all.limit(30)
		@factions = Faction.all
		@casters = Caster.all.order(:title)
	end

	def show
		@list = List.find(params[:id])
	end

	def edit
		@list = List.find(params[:id])
	end

	def update
		@list = Post.find(params[:id])
 
	  if @list.update(params[:list].permit(:title,:list_body,:size,:faction_id,:caster_id))
		  redirect_to @list
	  else
	    render 'edit'
	  end
	end

	private
		def list_params
			params.require(:list).permit(:title,:list_body,:size,:faction_id,:caster_id)
	  end
end
