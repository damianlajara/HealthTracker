require 'rails_helper'

RSpec.describe "prescriptions/new", type: :view do
  before(:each) do
    assign(:prescription, Prescription.new(
      :name => "MyString",
      :amount => 1,
      :refill => 1,
      :dosage => 1,
      :frequency => 1
    ))
  end

  it "renders new prescription form" do
    render

    assert_select "form[action=?][method=?]", prescriptions_path, "post" do

      assert_select "input#prescription_name[name=?]", "prescription[name]"

      assert_select "input#prescription_amount[name=?]", "prescription[amount]"

      assert_select "input#prescription_refill[name=?]", "prescription[refill]"

      assert_select "input#prescription_dosage[name=?]", "prescription[dosage]"

      assert_select "input#prescription_frequency[name=?]", "prescription[frequency]"
    end
  end
end
