require 'grape'

module GNRest

  class API < Grape::API
    version 'v1', using: :header, vendor: :genenetwork
    format :json
    prefix :api
    
    resource :status do
      desc 'Returns status'
      get :version do
        "0.0.1"
      end
      get :database do
        "testmode"
      end
    end
  end
end
