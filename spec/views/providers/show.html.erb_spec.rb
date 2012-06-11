require 'spec_helper'

describe "providers/show" do
  before(:each) do
    @provider = assign(:provider, stub_model(Provider,
      :type_person => "Type Person",
      :name => "Name",
      :email => "Email",
      :document => "Document",
      :description => "MyText",
      :type_service => "Type Service",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type Person/)
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Document/)
    rendered.should match(/MyText/)
    rendered.should match(/Type Service/)
    rendered.should match(/Phone/)
  end
end
