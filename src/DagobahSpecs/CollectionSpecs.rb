require 'spec_helper'

describe "When testing the collection class" do
  before :each do
    @collectionClass = CollectionClass.new
  end
  
  describe "When testing the empty collection" do
    it "Should be empty" do
      @collectionClass.EmptyCollection.should be_empty
    end
  end
  
  describe "When testing the non-empty collection" do
    it "Should not be empty" do
      @collectionClass.Collection.should_not be_empty
    end
  end
end

describe "When adding stormtroopers to a squad" do
  before :each do
    @squad = Squad.new
  end
  
  describe "When calling add a stormtrooper" do    
    it "should be a squad class" do
      @squad.should be_a(Squad)
    end
    
    #it "should have a trooper count one bigger than before" do
    #  @squad.AddAStormtrooper()
    #  @squad.Troopers.count.should == 1
    #end
    #
    #it "should increase the squad count by one" do
    #  lambda {
    #    @squad.AddAStormtrooper
    #  }.should change(Troopers, :count)
    #end
    
    it "should have a stormtrooper list" do
      @squad.Troopers.should be_empty
    end
    
    it "should add a trooper to the list" do
      @squad.AddAStormtrooper
      @squad.Troopers.count.should eql(1)
    end
    
    it "should have one trooper" do
      @squad.AddAStormtrooper
      @squad.should have(1).Troopers
    end
    
  end
end