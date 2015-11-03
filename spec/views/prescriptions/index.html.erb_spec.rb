require 'rails_helper'

RSpec.describe "prescriptions/index", type: :view do
  before(:each) do
    assign(:prescriptions, [
      Prescription.create!(
        :belongs_to => "",
        :name => "Name",
        :doctor => "Doctor",
        :amount => 1,
        :dosage => 2,
        :schedule => "Schedule",
        :refills => 3
      ),
      Prescription.create!(
        :belongs_to => "",
        :name => "Name",
        :doctor => "Doctor",
        :amount => 1,
        :dosage => 2,
        :schedule => "Schedule",
        :refills => 3
      )
    ])
  end

  it "renders a list of prescriptions" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Doctor".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Schedule".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
