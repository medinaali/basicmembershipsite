require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

def setup
  @role = Role.new(name: "Developer")
end


test "Role name should be present" do
  @role.name = ""
  assert_not @role.valid?
end


end
