require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ApplicationController do
  it "should use ApplicationController" do
    controller.should be_an_instance_of(ApplicationController)
  end
end