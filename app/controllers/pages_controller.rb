class PagesController < ApplicationController
	def about
		render template: "pages/#{params[:about]}"
	end

	def contact
		render template: "pages/#{params[:contact]}"
	end
end
