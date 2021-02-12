require 'rails_helper'

RSpec.describe "followers/new", type: :view do
  before(:each) do
    assign(:follower, Follower.new(
      user: ""
    ))
  end

  it "renders new follower form" do
    render

    assert_select "form[action=?][method=?]", followers_path, "post" do

      assert_select "input[name=?]", "follower[user]"
    end
  end
end
