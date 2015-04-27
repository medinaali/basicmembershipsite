require 'test_helper'

class PlatformTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

def setup
  @platform = Platform.new(name: "iOS")
end


test "Platform name should be present" do
  @platform.name = ""
  assert_not @platform.valid?
end


end
