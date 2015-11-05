require 'rails_helper'

RSpec.describe "user_stats/new", type: :view do
  before(:each) do
    assign(:user_stat, UserStat.new(
      :belongs_to => "",
      :feeling => "MyString",
      :calories => 1
    ))
  end

  it "renders new user_stat form" do
    render

    assert_select "form[action=?][method=?]", user_stats_path, "post" do

      assert_select "input#user_stat_belongs_to[name=?]", "user_stat[belongs_to]"

      assert_select "input#user_stat_feeling[name=?]", "user_stat[feeling]"

      assert_select "input#user_stat_calories[name=?]", "user_stat[calories]"
    end
  end
end
