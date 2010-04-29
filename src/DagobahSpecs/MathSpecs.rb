require 'spec_helper'

describe "when looking at should and should not be close" do
  before :all do
    @stormtrooper = Stormtrooper.new
  end
  
  it "should have an accuracy close to 5" do
    @stormtrooper.Accuracy.should be_close(5, 2)
  end
  
  it "should not have an accuracy close to 10" do
    @stormtrooper.Accuracy.should_not be_close(10, 2)
  end
end