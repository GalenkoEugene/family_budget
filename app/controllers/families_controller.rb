class FamiliesController < ApplicationController

  def search
  	@families = Family.search(params[:f])
  	
    respond_to do |format|  ## Add this
	  format.html { render :partial => "persons/search_rez", :locals => { :families => @families } }
      ## Other format
    end      
  end
  
  def new_family
  	@family = Family.new(family_params)
  	
  	respond_to do |format|
      if @family.save
      	current_user.update_attributes(family_id: @family.id) 		#Tie the user to the family
        format.html { render  html: "Success", :locals => { :family => @family } } 
      else
        format.html { render html: "Error, can not save... reload page and try again" }
      end
	end
  end
	
private

  def family_params
      params.require(:family).permit(:name)
  end

end
