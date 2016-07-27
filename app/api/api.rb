class API < Grape::API
  prefix 'api'
  format :json
  mount Fq::Venues
end
