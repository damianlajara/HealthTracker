require 'rails_helper'

RSpec.describe "prescriptions/index", type: :view do
  before(:each) do
    assign(:prescriptions, [
      Prescription.create!(
        :name => "Name",
        :amount => 1,
        :refill => 2,
        :dosage => 3,
        :frequency => 4
      ),
      Prescription.create!(
        :name => "Name",
        :amount => 1,
        :refill => 2,
        :dosage => 3,
        :frequency => 4
      )
    ])
  end

  it "renders a list of prescriptions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
