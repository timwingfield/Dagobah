require File.dirname(__FILE__) + '../Dagobah/bin/Debug/Dagobah.dll'
require 'rubygems'
require 'spec'

describe "When testing the collection class" do
  before :each do
    @collectionClass = Dagobah::CollectionClass.new
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