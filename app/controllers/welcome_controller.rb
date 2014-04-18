class WelcomeController < ApplicationController
  def hello 
    @likes_outlaws = ( params[:likes_outlaws] == "false" ) ? false : true
  end
end
