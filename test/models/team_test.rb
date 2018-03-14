require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  def setup
    @team = teams(:sooners)
    @user = User.new( first_name: "Hollis", 
                      last_name: "Price",
                      email: "hprice@ou.edu", 
                      account_level: "1",
                      expiration_date: "31/08/2019", 
                      password: "password",
                      password_confirmation: "password" )
  end
  
  test "should be valid" do
    assert @user.valid?
    @user.team << @team
    assert_equal @user.team.first.school, "Oklahoma"
  end
  
end