require 'spec_helper'

describe 'When generating an exception' do
  before :all do
    @trooper = Stormtrooper.new
  end
  
  it 'should raise an exception' do
    lambda { @trooper.InspectDroids }.should raise_exception
  end
  
  it 'should raise a NotTheDroidsYourLookingFor exception' do
    lambda { @trooper.InspectDroids }.should raise_exception(NotTheDroidsYourLookingFor)
  end
  
  it 'should raise a NotTheDroidsYourLookingFor exception with a message' do
    lambda { @trooper.InspectDroids }.should raise_exception(NotTheDroidsYourLookingFor, 'You can go about your business.')    
  end
end