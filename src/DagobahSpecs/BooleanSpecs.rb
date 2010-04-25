require 'spec_helper'

describe "When testing should and should_not" do
  before :each do
    @boolClass = Dagobah::BooleanClass.new
  end

  describe "When testing a class method" do    
    it "Should return true on the true method" do
      @boolClass.TrueMethod.should be_true
    end
    
    it "Should return false on the false method" do
      @boolClass.FalseMethod.should be_false
    end
    
    it "Should not be false for the true method" do
      @boolClass.TrueMethod.should_not be_false
    end
    
    it "Should not be true for the false method" do
      @boolClass.FalseMethod.should_not be_true
    end
  end
  
  describe "When testing a class property" do
    it "Should return true for the true propety" do
      @boolClass.TrueProperty.should be_true
    end
    
    it "Should return false for the false property" do
      @boolClass.FalseProperty.should be_false
    end
    
    it "Should not be false for the true property" do
      @boolClass.TrueProperty.should_not be_false
    end
    
    it "Should not be true for the false property" do
      @boolClass.FalseProperty.should_not be_true
    end
  end

end