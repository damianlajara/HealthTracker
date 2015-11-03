require 'rails_helper'

RSpec.describe "prescriptions/edit", type: :view do
  before(:each) do
    @prescription = assign(:prescription, Prescription.create!(
      :belongs_to => "",
      :name => "MyString",
      :doctor => "MyString",
      :amount => 1,
      :dosage => 1,
      :schedule => "MyString",
      :refills => 1
    ))
  end

  it "renders the edit prescription form" do
    render

    assert_select "form[action=?][method=?]", prescription_path(@prescription), "post" do

      assert_select "input#prescription_belongs_to[name=?]", "prescription[belongs_to]"

      assert_select "input#prescription_name[name=?]", "prescription[name]"

      assert_select "input#prescription_doctor[name=?]", "prescription[doctor]"

      assert_select "input#prescription_amount[name=?]", "prescription[amount]"

      assert_select "input#prescription_dosage[name=?]", "prescription[dosage]"

      assert_select "input#prescription_schedule[name=?]", "prescription[schedule]"

      assert_select "input#prescription_refills[name=?]", "prescription[refills]"
    end
  end
end
