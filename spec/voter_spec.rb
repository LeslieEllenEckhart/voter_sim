# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Test for Voter class object.
#
require './voter.rb'
 
describe Voter do

    it "is created with a name and political affiliation" do
        voter = Voter.new("Dr. Seuss", "Liberal")
        expect(voter).to be_a(Voter)
    end
    
    it "can report its name" do 
        voter = Voter.new("Dr. Seuss", "Liberal")
        expect(voter.name).to eq("Dr. Seuss")
    end
        
    it "can report its political affiliation" do
        voter = Voter.new("Dr. Seuss", "Liberal")
        expect(voter.political_affiliation).to eq("Liberal")
    end 
end