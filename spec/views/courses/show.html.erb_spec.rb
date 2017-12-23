require 'rails_helper'

RSpec.describe "courses/show", type: :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :title => "Title",
      :code => "Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Code/)
  end
end
