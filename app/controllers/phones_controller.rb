class PhonesController < ApplicationController

	def index
		@phones = Phone.all
	end

	def show
		@phone = Phone.find(params[:id])
	end

	def new
		@phone = Phone.new
	end

	def create
		@phone = Phone.new

		@phone.name = params[:phone][:name]
		@phone.brand = params[:phone][:brand]
		@phone.year_released = params[:phone][:year_released]
		@phone.camera = params[:phone][:camera]
		@phone.mpixels = params[:phone][:mpixels]
		@phone.internal_storage = params[:phone][:internal_storage]
		@phone.sim_slots = params[:phone][:sim_slots]
		@phone.size_of_screen = params[:phone][:size_of_screen]
		@phone.operating_system = params[:phone][:operating_system]
		@phone.num_in_stock = params[:phone][:num_in_stock]

		@phone.save

		redirect_to "/phones/#{@phone.id}"
	end


end
