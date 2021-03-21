
require 'booking_trick/user'
require 'booking_trick/room'

class Booking
  attr_reader :rooms, :user

  def initialize(name)
    binding.pry
    @name = name
    @user = user
    @rooms = rooms
  end

  def perform!
    room[:name]
  end

  private
  attr_reader :name

  def user
    BookingTrick::User.data.detect {|user| user[:name]== name }
  end

  def rooms
    BookingTrick::Room.new(user[:block]).execute
  end

  def room
    @rooms.detect do |room|
      room[:users].include? user[:name]
    end
  end
end
