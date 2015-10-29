require 'rails_helper'

RSpec.describe "user_sleeps/edit", type: :view do
  before(:each) do
    @user_sleep = assign(:user_sleep, UserSleep.create!(
      :user => "",
      :hours => 1,
      :quality => "MyString"
    ))
  end

  it "renders the edit user_sleep form" do
    render

    assert_select "form[action=?][method=?]", user_sleep_path(@user_sleep), "post" do

      assert_select "input#user_sleep_user[name=?]", "user_sleep[user]"

      assert_select "input#user_sleep_hours[name=?]", "user_sleep[hours]"

      assert_select "input#user_sleep_quality[name=?]", "user_sleep[quality]"
    end
  end
end
