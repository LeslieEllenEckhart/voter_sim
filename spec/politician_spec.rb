# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Test for Politician class object.

require './politician.rb'

describe Politician do
    it "is created with a name and registered party affiliation" do
        politician = Politician.new("Joe Kennedy", "Democrat")
        expect(politician).to be_a(Politician)
    end
    
    it "can report its name" do
        politician = Politician.new("Joe Kennedy", "Democrat")
        expect(politician.name).to eq("Joe Kennedy")
    end
    
    it "can report its registered party affiliation" do
        politician = Politician.new("Joe Kennedy", "Democrat")
        expect(politician.registered_party).to eq("Democrat")
    end
end
