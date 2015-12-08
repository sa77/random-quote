class WelcomeController < ApplicationController
  def index
  end

  def quote
  	@quote = {:title =>'hello there', :author=>'sandeep'}
  	respond_to do |format|
  		format.html
  		format.xml {render xml: @quote}
  		format.json {render json: @quote}
  	end
  end
end
