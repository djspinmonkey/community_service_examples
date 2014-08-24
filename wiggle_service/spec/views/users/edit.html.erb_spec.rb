require 'rails_helper'

RSpec.describe "users/edit", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :global_id => 1,
      :favorite_wiggle => nil
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_global_id[name=?]", "user[global_id]"

      assert_select "input#user_favorite_wiggle_id[name=?]", "user[favorite_wiggle_id]"
    end
  end
end
