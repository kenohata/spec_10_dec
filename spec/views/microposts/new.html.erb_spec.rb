require 'rails_helper'

RSpec.describe "microposts/new", :type => :view do
  before(:each) do
    assign(:micropost, Micropost.new(
      :user_id => 1,
      :token => "MyString",
      :content => "MyString"
    ))
  end

  it "renders new micropost form" do
    render

    assert_select "form[action=?][method=?]", microposts_path, "post" do

      assert_select "input#micropost_user_id[name=?]", "micropost[user_id]"

      assert_select "input#micropost_token[name=?]", "micropost[token]"

      assert_select "input#micropost_content[name=?]", "micropost[content]"
    end
  end
end
