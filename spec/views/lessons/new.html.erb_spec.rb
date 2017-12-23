require 'rails_helper'

RSpec.describe "lessons/new", type: :view do
  before(:each) do
    assign(:lesson, Lesson.new(
      :durration => 1
    ))
  end

  it "renders new lesson form" do
    render

    assert_select "form[action=?][method=?]", lessons_path, "post" do

      assert_select "input[name=?]", "lesson[durration]"
    end
  end
end
