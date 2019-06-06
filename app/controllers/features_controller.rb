class FeaturesController < ApplicationController
  def create
    @listing = Listing.find(params[:listing_id]) #finding the parents
    @feature = @listing.features.build(feature_params)
    if @feature.save
      redirect_to listing_path(@listing)
    else
      render "listings/show"
    end
  end

  private
  def feature_params
    params.require(:feature).permit(:description)
  end
end
