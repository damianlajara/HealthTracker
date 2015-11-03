require 'rails_helper'

RSpec.describe "prescriptions/edit", type: :view do
  before(:each) do
    @prescription = assign(:prescription, Prescription.create!(
      :name => "MyString",
      :amount => 1,
      :refill => 1,
      :dosage => 1,
      :frequency => 1
    ))
  end

  it "renders the edit prescription form" do
    render

    assert_select "form[action=?][method=?]", prescription_path(@prescription), "post" do

      assert_select "input#prescription_name[name=?]", "prescription[name]"

      assert_select "input#prescription_amount[name=?]", "prescription[amount]"

      assert_select "input#prescription_refill[name=?]", "prescription[refill]"

      assert_select "input#prescription_dosage[name=?]", "prescription[dosage]"

      assert_select "input#prescription_frequency[name=?]", "prescription[frequency]"
    end
  end
end
