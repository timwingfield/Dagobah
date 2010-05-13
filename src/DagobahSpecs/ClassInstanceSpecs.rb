require 'spec_helper'

describe "When checking for a type of class" do
  before :all do
    @stormtrooper = Dagobah::Stormtrooper.new
  end
  
  it "should be a stormtrooper" do
    @stormtrooper.should be_a(Stormtrooper)
  end
  
  it "should be kind of stormtrooper" do
    @stormtrooper.should be_kind_of(Stormtrooper)
  end
  
  it "should be a kind of stormtrooper" do
    @stormtrooper.should be_a_kind_of(Stormtrooper)
  end
  
  it "should be an instance of a stormtrooper" do
    @stormtrooper.should be_an_instance_of(Stormtrooper)
  end
  
  it "should not be a jedi" do
    @stormtrooper.should_not be_a(Jedi)
  end
  
  it "should not be kind of jedi" do
    @stormtrooper.should_not be_kind_of(Jedi)
  end
  
  it "should not be a kind of Jedi" do
    @stormtrooper.should_not be_a_kind_of(Jedi)
  end
end

describe "When checking for a type of base class" do
  before :all do
    @darktrooper = Darktrooper.new
  end
  
  it "should be a stormtrooper" do
    @darktrooper.should be_a(Stormtrooper)
  end
  
  it "should not be a jedi" do
    @darktrooper.should_not be_a(Jedi)
  end
end

describe "When checking if a class implements an interface" do
  before :all do
    @stormtrooper = Stormtrooper.new
    @darktrooper = Darktrooper.new
  end
  
  it "stormtrooper should be an instance of IStormtrooper" do
    @stormtrooper.should be_an(IStormtrooper)
  end
  
  it "darktrooper should be an instance of IStormtrooper" do
    @darktrooper.should be_an(IStormtrooper)
  end
end

describe "When creating a new stormtrooper" do
  before :each do
    @trooper = Stormtrooper.new("TK421")
  end
  
  it "should have the designation set" do
    @trooper.Designation.should == "TK421"
  end
  
  it "should have an accuracy of four" do
    @trooper.Accuracy.should == 4
  end
end