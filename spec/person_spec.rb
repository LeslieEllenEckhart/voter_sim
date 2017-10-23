# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Test for Person class object.

require './person.rb'

describe Person do
    
  it "is created with a name" do
      person = Person.new("Delaney")
      expect(person).to be_a(Person)
  end
    
  it "can report its name" do
      person = Person.new("Delaney")
      expect(person.person_name).to eq("Person is named Delaney.")
  end
    
#   it "can update its name" do
#       person = Person.new("Delaney")
#       expect(person.name_update("Maia")).to eq("Person is named Maia.")
#   end    

end