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
    rooms = @rooms.select { |x| x.category == cat }
  end

  def area
    house_area = []
    @rooms.map { |x| house_area << x.area }
    house_area.reduce(:+)
  end

  def price_per_square_foot
    @price = @price[1..-1].to_f
    (@price / area).round(2)
  end

  def rooms_sorted_by_area
    sorted_rooms = @rooms.sort_by { |x| x.area }.reverse
  end

  def rooms_by_category
    room_cat = []
    @rooms.select { |x| room_cat << x.category }
    room_cat.uniq!

    hash = {}
    for category in room_cat do
      hash[category] = rooms_from_category(category)
    end
    hash
  end
end
