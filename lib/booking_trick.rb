require "booking_trick/version"

module BookingTrick
  class Error < StandardError; end

  class RandomRoom
    def initialize opts
      puts opts
    end
  end

  def self.hello_world?
    puts 'Hello World!!!'
  end
end

BookingTrick.hello_world?
