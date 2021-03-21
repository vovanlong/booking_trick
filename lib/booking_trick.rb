require "booking_trick/version"
require 'booking_trick/booking'

module BookingTrick
  class Error < StandardError; end

  def self.hello_world?
    puts 'Hello World!!!'
  end
end

BookingTrick.hello_world?
