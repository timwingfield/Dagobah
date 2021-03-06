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
    
    it "should have two troopers in the list" do
      @squad.AddAStormtrooper
      @squad.AddAStormtrooper
      @squad.Troopers.should have(2).items
    end
  end
  
  describe "When adding three stormtroopers" do
    before :each do
      @squad.AddThreeStormtroopers
    end
    
    it "should have at least two troopers" do
      @squad.Troopers.should have_at_least(2).items
    end
    
    it "should have at most four troopers" do
      @squad.Troopers.should have_at_most(4).items
    end
    
    it "should have exactly three troopers" do
      @squad.Troopers.should have_exactly(3).items
    end
  end
end

describe "When creating a squad" do
  before :each do
    @trooper1 = Stormtrooper.new "TK421"
    @trooper2 = Stormtrooper.new "BKW407"
    @trooper3 = Stormtrooper.new "APW1227"
    
    @squad = Squad.new
    @squad.Troopers << @trooper1
    @squad.Troopers << @trooper2
  end
  
  it "should have two troopers in the squad" do
    @squad.Troopers.should have(2).items
  end
  
  it "should have trooper one in the squad" do
    @squad.Troopers.should include(@trooper1)
  end
  
  it "should have trooper two in the squad" do
    @squad.Troopers.should include(@trooper2)
  end
  
  it "should have troopers one and two in the squad" do
    @squad.Troopers.should include(@trooper1, @trooper2)
  end
  
  it "should not have trooper three in the squad" do
    @squad.Troopers.should_not include(@trooper3)
  end
end