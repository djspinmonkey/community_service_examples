require 'rails_helper'

RSpec.describe "wiggles/index", :type => :view do
  before(:each) do
    assign(:wiggles, [
      Wiggle.create!(
        :name => "Name",
        :owner => nil
      ),
      Wiggle.create!(
        :name => "Name",
        :owner => nil
      )
    ])
  end

  it "renders a list of wiggles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
