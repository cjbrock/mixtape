class UserMixtapesController < ApplicationController
  #def new
    @mixtape = Mixtape.find(params[:mixtape_id])
    @user_mixtape = @mixtape.user_mixtapes.build
  #end

  #def create
    #define
  #end


end
