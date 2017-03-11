class PersonsController < ApplicationController
	before_filter :authenticate_user! #, except => [:show, :index]
  def profile
  end
end
