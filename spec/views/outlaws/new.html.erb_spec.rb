require 'spec_helper'

describe "outlaws/new" do
  before(:each) do
    assign(:outlaw, stub_model(Outlaw,
      :name => "MyString",
      :nick => "MyString",
      :wanted_for => "MyText",
      :back_story => "MyText",
      :facial_hair => "MyString",
      :how_punished => "MyString",
      :hat => "MyString"
    ).as_new_record)
  end

  it "renders new outlaw form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", outlaws_path, "post" do
      assert_select "input#outlaw_name[name=?]", "outlaw[name]"
      assert_select "input#outlaw_nick[name=?]", "outlaw[nick]"
      assert_select "textarea#outlaw_wanted_for[name=?]", "outlaw[wanted_for]"
      assert_select "textarea#outlaw_back_story[name=?]", "outlaw[back_story]"
      assert_select "input#outlaw_facial_hair[name=?]", "outlaw[facial_hair]"
      assert_select "input#outlaw_how_punished[name=?]", "outlaw[how_punished]"
      assert_select "input#outlaw_hat[name=?]", "outlaw[hat]"
    end
  end
end
