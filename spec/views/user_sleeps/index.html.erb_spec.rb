require 'rails_helper'

RSpec.describe "user_sleeps/index", type: :view do
  before(:each) do
    assign(:user_sleeps, [
      UserSleep.create!(
        :user => "",
        :hours => 1,
        :quality => "Quality"
      ),
      UserSleep.create!(
        :user => "",
        :hours => 1,
        :quality => "Quality"
      )
    ])
  end

  it "renders a list of user_sleeps" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Quality".to_s, :count => 2
  end
end
