# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Class for "records lists" for voter simulation
#
require './person.rb'
require './politician.rb'
require './voter.rb'
require './records.rb'

describe Records do

    # 1. Test instantiantion of records
#     it "can create empty records lists for politicians and voters" do
#         Leon_Voters = Records.new.@@voter_registry
#         Leon_Politicians = Records.new.@@politician_registry
#         expect(Leon_Politicians).to be_a(Array)
#         expect(Leon_Voters).to be_a(Array)

# #         expect(voter_list).class eq Array 
#         expect(politician_registry).to be_empty
#         expect(voter_registry).to be_empty
#         expect(politician_list).to be_instance_of(Politician)
#         expect(voter_list).to be_instance_of(Voter)
#  

    # 2. Test creation of voter.
    it "can create a voter record and add to the registry" do
        leon_voters = Records.new("V")
        leon_voters = Records.add_voter("Dr. Seuss", "Liberal")
        expect(leon_voters.first).to be_a(Voter)
        expect(leon_voters.first.name).to eq("Dr. Seuss")
        expect(leon_voters.first.politics).to eq("Liberal")
    end

    # 3. Test creation of politician record.
    it "can create a policitian record" do
        leon_politicians = Records.add_politician("Joe Kennedy", "Democrat")
        expect(leon_politicians.first).to be_a(Politician)
        expect(leon_politicians.first.name).to eq("Joe Kennedy")
        expect(leon_politicians.first.party).to eq("Democrat")
    end

    # 4. Test reporting on list of all voters. 
    it "can list all voters in the registry"

    # 5. Test reporting on list of all politicians.
    it "can list all politicians in the registry"

    # 6. Test update of a voter.
    it "can update a voter in the registry"

    # 7. Test update of a politician.
    it "can update a politician in the registry"

    # 8. Test deletion of a voter.
    it "can delete a voter from the registry"
  
    # 9. Test deletion of a politician.
    it "can delete a politician from the registry"
#       ex -  
#       pets = ['cat', 'dog', 'rabbit', 'parrot']
#         pets.delete('dog')
#         pets = ['cat', 'rabbit', 'parrot']
#       a = [1, 2, 3, 4, 5, 6]
#         a.delete_at(2) # a = [1, 2, 4, 5, 6]
#       
#       
#       
    
    
end
