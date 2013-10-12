module Septa
  # module Rail
  class Train
    attr_accessor :id, :line


  end

  class Trip
    attr_accessor :original_train, :terminal_train, 
                  :departure_time, :arrival_time, :delay

    def initialize
    end

    def is_direct?
    end
  end
end
