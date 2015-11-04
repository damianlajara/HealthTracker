require 'rails_helper'

RSpec.describe "user_stats/show", type: :view do
  before(:each) do
    @user_stat = assign(:user_stat, UserStat.create!(
      :belongs_to => "",
      :feeling => "Feeling",
      :calories => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Feeling/)
    expect(rendered).to match(/1/)
  end
end
