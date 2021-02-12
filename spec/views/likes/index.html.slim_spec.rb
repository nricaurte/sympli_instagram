require 'rails_helper'

RSpec.describe "likes/index", type: :view do
  before(:each) do
    assign(:likes, [
      Like.create!(
        user: "",
        post: nil
      ),
      Like.create!(
        user: "",
        post: nil
      )
    ])
  end

  it "renders a list of likes" do
    render
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
