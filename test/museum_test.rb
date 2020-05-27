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




  end






end
