class PersonsController < ApplicationController
	before_action :authenticate_user! #, except => [:show, :index]
  def profile
  	
  end

  def search
  	@families = Family.search(params[:f])
  	
  	#render json: {:locals => { :families => @families }}, status: 200
    respond_to do |format|  ## Add this
	  format.html { render :partial => "persons/search_rez", :locals => { :families => @families } }
      ## Other format
    end      
  end
  

end
