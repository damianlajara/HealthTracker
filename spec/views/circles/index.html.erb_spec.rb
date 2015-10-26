require 'rails_helper'

RSpec.describe "circles/index", type: :view do
  before(:each) do
    assign(:circles, [
      Circle.create!(
        :name => "Name"
      ),
      Circle.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of circles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
