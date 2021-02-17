class Apartment
  attr_reader :number,
              :monthly_rent,
              :bathrooms,
              :bedrooms
  attr_accessor :renter

  def initialize(general_info)
    @number = general_info[:number]
    @monthly_rent = general_info[:monthly_rent]
    @bathrooms = general_info[:bathrooms]
    @bedrooms = general_info[:bedrooms]
    @renter = nil
  end

  def add_renter(new_renter)
    @renter = new_renter
  end
end
