require 'rails_helper'

RSpec.describe "user_sleeps/new", type: :view do
  before(:each) do
    assign(:user_sleep, UserSleep.new(
      :user => "",
      :hours => 1,
      :quality => "MyString"
    ))
  end

  it "renders new user_sleep form" do
    render

    assert_select "form[action=?][method=?]", user_sleeps_path, "post" do

      assert_select "input#user_sleep_user[name=?]", "user_sleep[user]"

      assert_select "input#user_sleep_hours[name=?]", "user_sleep[hours]"

      assert_select "input#user_sleep_quality[name=?]", "user_sleep[quality]"
    end
  end
end
