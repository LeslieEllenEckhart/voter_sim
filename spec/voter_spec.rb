# this is taking the file holding Voter code for here.
require './voter.rb'
# describe the classname
describe Voter do

    it "is created with a name and party designation" do
        voter = Voter.new("Dr. Seuss", "Democrat")
        expect(voter).to be_a(Person)
        expect(voter).to be_a(Voter)
    end
    
    it "can report its party registration" do
        voter = Voter.new("Dr. Seuss", "Democrat")
        expect(voter.party_registration).to eq("Party registration is Democrat.")
    end
    
    it "can update their party registration" do
        voter = Voter.new("Dr. Suess", "Democrat")
        expect(voter.party_update("Green")).to eq("New party registration is Green.")
    end    

    it "can be added to the Local Registration List" do
    end
    
    it "can be deleted from the Local Registration List" do
    end    
end