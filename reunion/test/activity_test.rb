require 'minitest/autorun'
require './lib/activity'
require 'pry'

class ActivityTest < Minitest::Test
  def setup
    @activity = Activity.new('Brunch')
  end

  def test_it_exists_and_has_attrs
    assert_instance_of Activity, @activity
    assert_equal 'Brunch', @activity.name
    assert_equal({}, @activity.participants)
  end

  def test_it_can_add_participants
    @activity.add_participant("Maria", 20)
    assert_equal({"Maria" => 20}, @activity.participants)
    @activity.add_participant("Luther", 40)
    assert_equal({"Maria" => 20, "Luther" => 40}, @activity.participants)
  end

  def test_it_can_calculate_total_cost
    assert_equal 0, @activity.total_cost
    @activity.add_participant("Maria", 20)
    assert_equal 20, @activity.total_cost
    @activity.add_participant("Luther", 40)
    assert_equal 60, @activity.total_cost
  end

  def test_it_can_split_total_cost
    @activity.add_participant("Maria", 20)
    assert_equal 20, @activity.split
    @activity.add_participant("Luther", 40)
    assert_equal 30, @activity.split
  end

  def test_it_can_find_amounts_owed
    @activity.add_participant("Maria", 20)
    @activity.add_participant("Luther", 40)
    assert_equal({"Maria" => 10, "Luther" => -10}, @activity.owed)
  end
end
