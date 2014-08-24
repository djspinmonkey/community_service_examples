require 'rails_helper'

RSpec.describe "wiggles/new", :type => :view do
  before(:each) do
    assign(:wiggle, Wiggle.new(
      :name => "MyString",
      :owner => nil
    ))
  end

  it "renders new wiggle form" do
    render

    assert_select "form[action=?][method=?]", wiggles_path, "post" do

      assert_select "input#wiggle_name[name=?]", "wiggle[name]"

      assert_select "input#wiggle_owner_id[name=?]", "wiggle[owner_id]"
    end
  end
end
