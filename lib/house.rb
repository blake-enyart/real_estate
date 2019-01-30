class House

  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(cat)
    @rooms.select { |x| x.category == cat }
  end

  def area
    house_area = []
    @rooms.map { |x| house_area << x.area }
    house_area.reduce(:+)
  end

end
