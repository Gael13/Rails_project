class UsersController < ApplicationController
  def index
    #@users = User.all
    # get all journeys for current user
    @journeys = Journey.where(user_id: current_user.id)
    
  end
end
