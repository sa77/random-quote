class WelcomeController < ApplicationController

	require 'csv'    
	# array to store quote and its author as a dictionary {:title => 'title', :author => 'quote'}
	@@quote_array = []
	CSV.foreach('public/quotes.csv') do |row|
		@@quote_array << [:title=>row[0], :author =>row[1]]
	end

	
	def index
	end

	def quote
		temp = rand(1..@@quote_array.count)		
		# random entry from the array for view
		@quote = @@quote_array[temp][0]
		respond_to do |format|
			format.html
			format.xml {render xml: @quote}
			format.json {render json: @quote}
		end
	end
end
