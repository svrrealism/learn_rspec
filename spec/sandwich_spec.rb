#This file defines tests known in Rspec as specs, short for specifications
#(It specifies the desired state of your code.)
# The Rspec block below describes an example group - defines what you are testing

#Definitions: They are semi-interchangeable
  #Test - validates that a bit of code is working properly
  #Spec - describes the desired behavior of a bit of code
  #Example shows how a particular API is intended to be used

#In the example below with the class, it is set in an:
#Arrange, Act, Assert pattern = set up an object, do something with it, check for correct behavior
#==========
Sandwich = Struct.new(:taste, :toppings)
#Rspec.descibe = sets up an example group(set of related tests)
RSpec.describe 'An ideal sandwich' do
#the 'it' block is an example of the sandwich's use, other frameworks say, 'test case'
#it creates an example (individual test)
  it 'is delicious' do
    sandwich = Sandwich.new('delicious', [])
    taste = sandwich.taste
    #expect verifies an expected outcome (assertion)
    expect(taste).to eq('delicious')
  end
end
