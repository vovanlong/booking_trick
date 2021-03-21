module BookingTrick
  class Room
    attr_reader :block
  
    def initialize(block)
      @block = block
    end
    
    def execute
      send("block_#{block.downcase}")
    end
  
    private
    def block_a
      [
        { name: 101, users: ['Ha Le'] },
        { name: 102, users: ['Minh Tang'] },
        { name: 201, users: ['Phuong Vo'] },
        { name: 202, users: ['Anh Le'] },
        { name: 203, users: ['Anh Luu', 'Anh Tran'] },
        { name: 204, users: ['Anh Nguyen'] }, 
        { name: 301, users: ['Quoc Le'] },
        { name: 302, users: ['Luan Dang'] },
      ]
        
    end
  
    def block_b
      [
        { 
          name: 205, users: ['Lan Le Hoang', 'Thuan Nguyen'] 
        },
        { 
          name: 208, users: ['Long Vo', 'Tung Nguyen', 'Huy Nguyen'] 
        },
        { 
          name: 303, users: ['Huy Dang', 'Tri Dang', 'Ninh Le']
        },
        { 
          name: 304, users: ['Le Pham', 'Trang Chu', 'Linh Chau', 'Thuong Ngo']
        }
      ]
    end
  end
end
