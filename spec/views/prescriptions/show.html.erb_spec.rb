require 'rails_helper'

RSpec.describe "prescriptions/show", type: :view do
  before(:each) do
    @prescription = assign(:prescription, Prescription.create!(
      :belongs_to => "",
      :name => "Name",
      :doctor => "Doctor",
      :amount => 1,
      :dosage => 2,
      :schedule => "Schedule",
      :refills => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Doctor/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Schedule/)
    expect(rendered).to match(/3/)
  end
end
