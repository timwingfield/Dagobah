require 'spec_helper'

describe "When testing a method that returns null" do
  before :each do
    @nullClass = Dagobah::NullClass.new
  end
  
  it "Should be nil" do
    @nullClass.NullMethod.should be_nil
  end
end