require 'test_helper'

class IdeaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

def setup
  @idea = Idea.new(title: "Idea1", idea_description: "Example1", skill_description: "Example1")
end


test "Title should be present" do
  @idea.title = ""
  assert_not @idea.valid?
end

test "Description of Idea should be present" do
  @idea.idea_description = ""
  assert_not @idea.valid?
end

test "Description of Skills should be present" do
  @idea.skill_description = ""
  assert_not @idea.valid?
end

end
