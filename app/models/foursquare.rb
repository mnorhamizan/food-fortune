class Foursquare < ActiveRecord::Base
  require 'foursquare2'
  def self.search_venues(ll)
    client.search_venues(:ll => ll, :query => "Restaurant")
  end

  def self.client
    @client ||= Foursquare2::Client.new(:client_id => 'UGI34IU152V0O0UDNJ4TKE14N40CNEIEV5KB1EDWTM5CG2DF', :client_secret => 'UGWOTY02X4FL3K3JHLZV2RH5Q3MJSMEH5SLFHH5AE3HV2MGG', :api_version => '20160402')
  end
end
