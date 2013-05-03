require "test/unit"

# You've just created a virtual vending machine that will dispense widgets of programming goodness when a user puts money into the machine. The machine should dispense the proper change. You now need the programming logic to determine which coins to dispense. 
# Input: "cents" (an integer) represents the change amount, i.e. 50
# Process: the class method "make_change"
# Output: number of coins [25, 25]

class Changer

  def self.make_change(cents)
    
  end


end

class ChangerTest < Test::Unit::TestCase

  def test_can_change_one_quarter
    assert_equal Changer.make_change(25), [25]
  end

  def test_can_change_multiple_quarters
    assert_equal Changer.make_change(50), [25, 25]
  end

  def test_can_change_one_dime
    assert_equal Changer.make_change(10), [10]
  end

  def test_can_change_multiple_dimes
    assert_equal Changer.make_change(20), [10, 10]
  end

  def test_can_change_small_complex_amounts
    assert_equal Changer.make_change(7), [5, 1, 1]
  end

  def test_can_change_large_complex_amounts
    assert_equal Changer.make_change(68), [25, 25, 10, 5, 1, 1, 1]
  end

end


