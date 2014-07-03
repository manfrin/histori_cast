require 'rails_helper'

RSpec.describe "podcasts/new", :type => :view do
  before(:each) do
    assign(:podcast, Podcast.new(
      :title => "MyString",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders new podcast form" do
    render

    assert_select "form[action=?][method=?]", podcasts_path, "post" do

      assert_select "input#podcast_title[name=?]", "podcast[title]"

      assert_select "textarea#podcast_description[name=?]", "podcast[description]"

      assert_select "input#podcast_user_id[name=?]", "podcast[user_id]"
    end
  end
end
