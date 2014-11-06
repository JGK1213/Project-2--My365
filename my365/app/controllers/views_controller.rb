class ViewsController < ApplicationController

	def index
		@views = View.all
	end

	
end
