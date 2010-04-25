require File.dirname(__FILE__) + '../Dagobah/bin/Debug/Dagobah.dll'
require 'rubygems'
require 'spec'

describe "When checking for a type of class" do
  before :all do
    @stormtrooper = Dagobah::Stormtrooper.new
  end
  
  it "should be a stormtrooper" do
    @stormtrooper.should be_a Dagobah::Stormtrooper
  end
end