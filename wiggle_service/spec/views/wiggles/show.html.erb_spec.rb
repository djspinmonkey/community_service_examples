require 'rails_helper'

RSpec.describe "wiggles/show", :type => :view do
  before(:each) do
    @wiggle = assign(:wiggle, Wiggle.create!(
      :name => "Name",
      :owner => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
