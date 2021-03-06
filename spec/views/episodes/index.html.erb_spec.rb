require 'rails_helper'

RSpec.describe "episodes/index", :type => :view do
  before(:each) do
    assign(:episodes, [
      Episode.create!(
        :title => "Title",
        :episode_number => 1,
        :podcast => nil
      ),
      Episode.create!(
        :title => "Title",
        :episode_number => 1,
        :podcast => nil
      )
    ])
  end

  it "renders a list of episodes" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
