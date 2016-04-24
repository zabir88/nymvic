class PagesController < ApplicationController
	def about
		render template: "pages/#{params[:about]}"
	end
end
