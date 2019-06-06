class FeaturesController < ApplicationController
  def create
    @listing = Listing.find(params[:listing_id]) #finding the parents
    @feature = @listing.features.build(feature_params)
    @feature.save
    redirect_to listing_path(@listing)
  end

  private
  def feature_params
    params.require(:feature).permit(:description)
  end
end
