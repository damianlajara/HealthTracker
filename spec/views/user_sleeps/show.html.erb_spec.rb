require 'rails_helper'

RSpec.describe "user_sleeps/show", type: :view do
  before(:each) do
    @user_sleep = assign(:user_sleep, UserSleep.create!(
      :user => "",
      :hours => 1,
      :quality => "Quality"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Quality/)
  end
end
