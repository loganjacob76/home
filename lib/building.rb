
class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(new_unit)
    @units << new_unit
  end

  def renters
    total_renters = []
    @units.map do |unit|
      if unit.renter != nil
        total_renters << unit.renter.name
      end
    end
    total_renters
  end

  def average_rent
    rent = []
    @units.each do |unit|
      rent << unit.monthly_rent
    end
    rent.sum.to_f / rent.length
  end

  def rented_units
    total_units = []
    @units.map do |unit|
      if unit.renter != nil
        total_units << unit
      end
    end
    total_units
  end
end
