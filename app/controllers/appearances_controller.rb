class AppearancesController < ApplicationController

  def index
    @appearances = Appearance.all
  end

def new
  @guests = Guest.all
  @episodes = Episode.all
  @appearance = Appearance.new
end

def create
  @appearance = Appearance.new(appearance_params)
  if @appearance.valid?
    @appearance.save
  redirect_to @appearance.episode
  else
   redirect_to new_appearance_path
  end
end


private

def appearance_params
  params.require(:appearance).permit(:guest_id, :episode_id, :guest_rating)
end

end
