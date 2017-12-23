require 'rails_helper'

RSpec.describe "lessons/edit", type: :view do
  before(:each) do
    @lesson = assign(:lesson, Lesson.create!(
      :durration => 1
    ))
  end

  it "renders the edit lesson form" do
    render

    assert_select "form[action=?][method=?]", lesson_path(@lesson), "post" do

      assert_select "input[name=?]", "lesson[durration]"
    end
  end
end
