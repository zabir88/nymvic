class PagesController < ApplicationController
	def about
		render template: "pages/#{params[:about]}"
	end
	def contactus
		render template: "pages/#{params[:contactus]}"
	end

end
