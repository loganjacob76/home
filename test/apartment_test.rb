require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'

class ApartmentTest < Minitest::Test
  def setup
    @renter1 = Renter.new("Jessie")
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  end

  def test_it_exists
    assert_instance_of Apartment, @unit1
  end

  def test_it_has_number
    assert_equal "A1", @unit1.number
  end

  def test_it_has_monthly_rent
    assert_equal 1200, @unit1.monthly_rent
  end

  def test_it_has_bathrooms
    assert_equal 1, @unit1.bathrooms
  end

  def test_it_has_bedrooms
    assert_equal 1, @unit1.bedrooms
  end

  def test_renter_default_returns_nil
    assert_equal nil, @unit1.renter
  end

  def test_can_add_renter
    @unit1.add_renter(@renter1)

    assert_equal @renter1, @unit1.renter
  end
end
