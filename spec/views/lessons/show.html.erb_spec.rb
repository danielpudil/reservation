require 'rails_helper'

RSpec.describe "lessons/show", type: :view do
  before(:each) do
    @lesson = assign(:lesson, Lesson.create!(
      :durration => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
