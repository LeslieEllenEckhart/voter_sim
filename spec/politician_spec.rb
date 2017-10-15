# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Test for Politician class object.

require './politician'

describe Politician do
    it "is created with a name and political affiliation" do
        politician = Politician.new("Democrat")
        expect(politician).to be_a(Person)
        expect(politician).to be_a(Politician)
    end
    
    it "can report its political affiliation" do
    end
    
    it "can update its political affiliation" do
    end
    
end
