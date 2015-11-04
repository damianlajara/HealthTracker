require 'rails_helper'

RSpec.describe "user_stats/edit", type: :view do
  before(:each) do
    @user_stat = assign(:user_stat, UserStat.create!(
      :belongs_to => "",
      :feeling => "MyString",
      :calories => 1
    ))
  end

  it "renders the edit user_stat form" do
    render

    assert_select "form[action=?][method=?]", user_stat_path(@user_stat), "post" do

      assert_select "input#user_stat_belongs_to[name=?]", "user_stat[belongs_to]"

      assert_select "input#user_stat_feeling[name=?]", "user_stat[feeling]"

      assert_select "input#user_stat_calories[name=?]", "user_stat[calories]"
    end
  end
end
