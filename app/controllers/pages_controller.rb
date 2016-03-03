class PagesController < ApplicationController


	def about

		render :contact
	end

	def contact
		@name = "puneet"
	end

end
