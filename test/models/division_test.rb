require 'test_helper'

class DivisionTest < ActiveSupport::TestCase
  test 'all eligible players' do
    ordered_teams = divisions(:high_school).ordered_teams
    assert_equal divisions(:high_school).teams.size, ordered_teams.size
  end

  test 'top five eligible players' do
    ordered_teams = divisions(:high_school).ordered_teams(true)
    assert_operator 5, :>=, ordered_teams.size
  end
end
