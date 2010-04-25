require File.dirname(__FILE__) + '../Dagobah/bin/Debug/Dagobah.dll'
require 'rubygems'
require 'spec'

describe "When testing a method that returns null" do
  before :each do
    @nullClass = Dagobah::NullClass.new
  end
  
  it "Should be nil" do
    @nullClass.NullMethod.should be_nil
  end
end