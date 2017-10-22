#
#  this is taking the file holding Voter code for here.
require './voter.rb'
# 
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
    
    it "can update their political affiliation" do
        voter = Voter.new("Dr. Suess", "Liberal")
        expect(voter.affiliation_update("Socialist")).to eq("Updated political affiliation is Socialist.")
    end    

    it "can be added to the Local Registration List" do
    end
    
    it "can be deleted from the Local Registration List" do
    end    
end