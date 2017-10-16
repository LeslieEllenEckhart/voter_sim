# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Test for Politician class object.

require './politician.rb'

describe Politician do
    it "is created with a name and political affiliation" do
        politician = Politician.new("Joe Kennedy", "Democrat")
        expect(politician).to be_a(Person)
        expect(politician).to be_a(Politician)
    end
    
    it "can report its political affiliation" do
        politician = Politician.new("Joe Kennedy", "Democrat")
        expect(politician.affiliation).to eq("Affiliation is Democrat.")
    end
    
    it "can update its political affiliation" do
       politician = Politician.new("Joe Kennedy", "Democrat")
       expect(politician.affiliation_update("Green")).to eq("Affiliation is Green.")
    end    

    it "can be added to the Local Registration List" do
    end
    
    it "can be deleted from the Local Registration List" do
    end
end
