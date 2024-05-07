class HomeController < ApplicationController
	def index
		@title_text = "Hello World" #Global variable also used at view folder
		@subtitle_text = "I'm learning Rails"
	end
end