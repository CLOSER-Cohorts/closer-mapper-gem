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
end
