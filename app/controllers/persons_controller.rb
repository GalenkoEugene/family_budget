class PersonsController < ApplicationController
	before_action :authenticate_user! , except: :search
  def profile
  	
  end

end
