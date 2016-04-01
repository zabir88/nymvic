class PagesController < ApplicationController
	def about
		render template: "pages/#{params[:about]}"
	end
	def volunteer
		render template: "pages/#{params[:volunteer]}"
	end

end
