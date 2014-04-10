require 'spec_helper'

describe "outlaws/show" do
  before(:each) do
    @outlaw = assign(:outlaw, stub_model(Outlaw,
      :name => "Name",
      :nick => "Nick",
      :wanted_for => "MyText",
      :back_story => "MyText",
      :facial_hair => "Facial Hair",
      :how_punished => "How Punished",
      :hat => "Hat"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Nick/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Facial Hair/)
    rendered.should match(/How Punished/)
    rendered.should match(/Hat/)
  end
end
