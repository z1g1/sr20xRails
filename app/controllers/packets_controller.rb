class PacketsController < ApplicationController
	def index
        @packets = Packet.all
	end
	def show
        @packet = Packet.find(params[:id])
		@missions = Mission.where("'created_at' > '2013' AND packet_id = ?", params[:id])
	end
end
