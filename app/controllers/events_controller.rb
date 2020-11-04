class EventsController < ApplicationController
  def index
  end

	def new
	end

	def show
		@event=Event.find(params[:id])
		@duration = @event.duration / 3600
	end

	def create

		puts params[:description]
		puts params[:location]
		puts params[:start_date]
		puts params[:title]

		@event=Event.new(title:params[:title],location:params[:location],start_date:params[:start_date],duration:params[:duration],price:params[:price],description:params[:description],user:current_user)
	
		if @event.save

		else
			render :error	
		end
	end
end
