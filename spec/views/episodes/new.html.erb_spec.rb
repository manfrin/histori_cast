require 'rails_helper'

RSpec.describe "episodes/new", :type => :view do
  before(:each) do
    assign(:episode, Episode.new(
      :title => "MyString",
      :episode_number => 1,
      :podcast => nil
    ))
  end

  it "renders new episode form" do
    render

    assert_select "form[action=?][method=?]", episodes_path, "post" do

      assert_select "input#episode_title[name=?]", "episode[title]"

      assert_select "input#episode_episode_number[name=?]", "episode[episode_number]"

      assert_select "input#episode_podcast_id[name=?]", "episode[podcast_id]"
    end
  end
end
