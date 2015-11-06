require 'rails_helper'

RSpec.describe "user_stats/index", type: :view do
  before(:each) do
    assign(:user_stats, [
      UserStat.create!(
        :belongs_to => "",
        :feeling => "Feeling",
        :calories => 1
      ),
      UserStat.create!(
        :belongs_to => "",
        :feeling => "Feeling",
        :calories => 1
      )
    ])
  end

  it "renders a list of user_stats" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Feeling".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
