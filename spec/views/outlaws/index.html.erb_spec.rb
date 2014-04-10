require 'spec_helper'

describe "outlaws/index" do
  before(:each) do
    assign(:outlaws, [
      stub_model(Outlaw,
        :name => "Name",
        :nick => "Nick",
        :wanted_for => "MyText",
        :back_story => "MyText",
        :facial_hair => "Facial Hair",
        :how_punished => "How Punished",
        :hat => "Hat"
      ),
      stub_model(Outlaw,
        :name => "Name",
        :nick => "Nick",
        :wanted_for => "MyText",
        :back_story => "MyText",
        :facial_hair => "Facial Hair",
        :how_punished => "How Punished",
        :hat => "Hat"
      )
    ])
  end

  it "renders a list of outlaws" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Nick".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Facial Hair".to_s, :count => 2
    assert_select "tr>td", :text => "How Punished".to_s, :count => 2
    assert_select "tr>td", :text => "Hat".to_s, :count => 2
  end
end
