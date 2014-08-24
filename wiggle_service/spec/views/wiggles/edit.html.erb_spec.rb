require 'rails_helper'

RSpec.describe "wiggles/edit", :type => :view do
  before(:each) do
    @wiggle = assign(:wiggle, Wiggle.create!(
      :name => "MyString",
      :owner => nil
    ))
  end

  it "renders the edit wiggle form" do
    render

    assert_select "form[action=?][method=?]", wiggle_path(@wiggle), "post" do

      assert_select "input#wiggle_name[name=?]", "wiggle[name]"

      assert_select "input#wiggle_owner_id[name=?]", "wiggle[owner_id]"
    end
  end
end
