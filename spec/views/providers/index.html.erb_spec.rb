require 'spec_helper'

describe "providers/index" do
  before(:each) do
    assign(:providers, [
      stub_model(Provider,
        :type_person => "Type Person",
        :name => "Name",
        :email => "Email",
        :document => "Document",
        :description => "MyText",
        :type_service => "Type Service",
        :phone => "Phone"
      ),
      stub_model(Provider,
        :type_person => "Type Person",
        :name => "Name",
        :email => "Email",
        :document => "Document",
        :description => "MyText",
        :type_service => "Type Service",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of providers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type Person".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Document".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Type Service".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
