require 'rails_helper'

RSpec.describe "episodes/show", :type => :view do
  before(:each) do
    @episode = assign(:episode, Episode.create!(
      :title => "Title",
      :episode_number => 1,
      :podcast => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
