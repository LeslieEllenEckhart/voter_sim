# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Test for Politician class object.

require './politician.rb'

describe Politician do
    it "is created with a name and party affiliation" do
        politician = Politician.new("Joe Kennedy", "Democrat")
        expect(politician).to be_a(Politician)
    end
    
    it "can report its name" do
        politician = Politician.new("Joe Kennedy", "Democrat")
        expect(politician.name).to eq("Joe Kennedy")
    end
    
    it "can report its party affiliation" do
        politician = Politician.new("Joe Kennedy", "Democrat")
        expect(politician.party).to eq("Democrat")
    end
    
    it "can update its party affiliation" do
       politician = Politician.new("Joe Kennedy", "Democrat")
       expect(politician.party_update("Green")).to eq("Green")
    end    

    it "can be added to the Local Registration List" do
    end
    
    it "can be deleted from the Local Registration List" do
    end
end
