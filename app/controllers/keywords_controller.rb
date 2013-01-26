class KeywordsController < ApplicationController
  def create
    @landmark = Landmark.find(params[:landmark_id])
    @keyword = @landmark.keywords.create(params[:keyword])
    redirect_to landmark_path(@landmark)
  end

  def destroy
    @landmark = Landmark.find(params[:landmark_id])
    @keyword = @landmark.keywords.find(params[:id])
    @keyword.destroy
    redirect_to landmark_path(@landmark)
  end
end
