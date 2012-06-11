require 'spec_helper'

describe "providers/new" do
  before(:each) do
    assign(:provider, stub_model(Provider,
      :type_person => "MyString",
      :name => "MyString",
      :email => "MyString",
      :document => "MyString",
      :description => "MyText",
      :type_service => "MyString",
      :phone => "MyString"
    ).as_new_record)
  end

  it "renders new provider form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => providers_path, :method => "post" do
      assert_select "input#provider_type_person", :name => "provider[type_person]"
      assert_select "input#provider_name", :name => "provider[name]"
      assert_select "input#provider_email", :name => "provider[email]"
      assert_select "input#provider_document", :name => "provider[document]"
      assert_select "textarea#provider_description", :name => "provider[description]"
      assert_select "input#provider_type_service", :name => "provider[type_service]"
      assert_select "input#provider_phone", :name => "provider[phone]"
    end
  end
end
