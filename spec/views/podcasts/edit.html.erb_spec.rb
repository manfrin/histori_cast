require 'rails_helper'

RSpec.describe "podcasts/edit", :type => :view do
  before(:each) do
    @podcast = assign(:podcast, Podcast.create!(
      :title => "MyString",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders the edit podcast form" do
    render

    assert_select "form[action=?][method=?]", podcast_path(@podcast), "post" do

      assert_select "input#podcast_title[name=?]", "podcast[title]"

      assert_select "textarea#podcast_description[name=?]", "podcast[description]"

      assert_select "input#podcast_user_id[name=?]", "podcast[user_id]"
    end
  end
end
