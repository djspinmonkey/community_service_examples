require 'rails_helper'

RSpec.describe "users/new", :type => :view do
  before(:each) do
    assign(:user, User.new(
      :global_id => 1,
      :favorite_wiggle => nil
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_global_id[name=?]", "user[global_id]"

      assert_select "input#user_favorite_wiggle_id[name=?]", "user[favorite_wiggle_id]"
    end
  end
end
