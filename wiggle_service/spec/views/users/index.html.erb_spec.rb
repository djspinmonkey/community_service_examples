require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :global_id => 1,
        :favorite_wiggle => nil
      ),
      User.create!(
        :global_id => 1,
        :favorite_wiggle => nil
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
