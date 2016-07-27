module Fq
  class Venues < Grape::API
    desc 'Returns list of location.'
    params do
      requires :latitude, type: String, desc: 'll.'
      requires :longitude, type: String, desc: 'll.'
    end

    post do
      latitude = params[:latitude]
      longitude = params[:longitude]
      ll = latitude + "," + longitude
      v = Foursquare.search_venues(ll)
      status(200)
      {
        status: "Success",
        data: v
      }
    end
  end
end
