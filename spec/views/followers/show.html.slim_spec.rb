require 'rails_helper'

RSpec.describe "followers/show", type: :view do
  before(:each) do
    @follower = assign(:follower, Follower.create!(
      user: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
