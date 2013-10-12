require 'resourceful'

module Septa
  class SeptaAPI
    def self.api_host 
      "www3.septa.org/hackathon"
    end

    def self.next_to_arrive source, destination, limit = 1 
      get "http://%s/NextToArrive/%s/%s/%s" %
        [api_host, source, destination, limit]
    end

    def self.train_view
      get "http://%s/TrainView/" %
        [api_host]
    end

    def self.transit_view route
      get "http://%s/TransitView/%s" %
        [api_host, route]
    end

    def self.get url
      Resourceful.get url
    end

    private_class_method :get
  end
end
