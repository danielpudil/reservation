require 'rails_helper'

RSpec.describe "lessons/index", type: :view do
  before(:each) do
    assign(:lessons, [
      Lesson.create!(
        :durration => 2
      ),
      Lesson.create!(
        :durration => 2
      )
    ])
  end

  it "renders a list of lessons" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
