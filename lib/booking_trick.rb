require "booking_trick/version"

module BookingTrick
  class Error < StandardError; end

  class RandomRoom
    attr_reader :rooms, :user

    def initialize(name)
      @name = name
      @user = user
      @rooms = rooms
    end

    def perform!
      room
    end

    private
    attr_reader :name

    def user
      User.data.detect {|user| user[:name]== name }
    end

    def rooms
      Room.new(user[:block]).execute
    end

    def room
      @rooms.detect do |room|
        room[:users].include? user[:name]
      end
    end
  end

  def self.hello_world?
    puts 'Hello World!!!'
  end
end

BookingTrick.hello_world?
