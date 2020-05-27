require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'
require './lib/museum'

class MuseumTest < Minitest::Test

  def setup

    @dmns = Museum.new({name: "Denver Museum of Nature and Science"})
    @gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
    @dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
    @imax = Exhibit.new({name: "IMAX",cost: 15})
    @patron_2 = Patron.new({name: "Sally", spending_money: 20})
  end

  def test_it_exists
    skip
    assert_instance_of Museum, @dmns
  end

  def test_it_has_a_name
    skip
    assert_equal "Denver Museum of Nature and Science", @dmns.name
  end

  def test_it_has_exhibits
    skip
    dmns.add_exhibit("Gems and Minerals")
    dmns.add_exhibit("Dead Sea Scrolls")
    dmns.add_exhibit("IMAX")

    assert_equal "Gems and Minerals", @dmns.exhibits
    assert_equal "Dead Sea Scrolls", @dmns.exhibits
    assert_equal "IMAX", @dmns.exhibits
  end

  def test_it_has_patrons
    skip
    @patron_1 = Patron.new("Bob", 20)
    @patron_2 = Patron.new("Sally", 20)

    assert_equal "Bob", @patron_1.name
    assert_equal "Sally", @patron_2.name
  end

  def test_new_patron_has_interest
    skip
    patron_2.add_interest("IMAX")

    assert_equal "IMAX", @patron_2.interest
  end


end
