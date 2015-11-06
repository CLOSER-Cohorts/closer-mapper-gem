require 'test_helper'

class AddCloserCentresTest < ActiveSupport::TestCase

  test "mcs is cls" do
    u = User.new
    u.study = 'MCS'
    assert_equal true, u.cls?
  end

  test "hcs is cls" do
    u = User.new
    u.study = 'HCS'
    assert_equal false, u.cls?
  end

  test "mcs is soton" do
    u = User.new
    u.study = 'MCS'
    assert_equal false, u.soton?
  end

  test "hcs is soton" do
    u = User.new
    u.study = 'HCS'
    assert_equal true, u.soton?
  end

  test "add centres to where" do    
    instruments = Instrument.where(study: 'CLS')
    assert_equal 2, instruments.count
  end

  test "study hcs still work in where" do
    instruments = Instrument.where(study: 'HCS')
    assert_equal 1, instruments.count
  end

  test "study mcs still work in where" do
    instruments = Instrument.where(study: 'MCS')
    assert_equal 1, instruments.count
  end
end
