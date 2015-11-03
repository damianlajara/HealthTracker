require 'rails_helper'

RSpec.describe "prescriptions/show", type: :view do
  before(:each) do
    @prescription = assign(:prescription, Prescription.create!(
      :name => "Name",
      :amount => 1,
      :refill => 2,
      :dosage => 3,
      :frequency => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
