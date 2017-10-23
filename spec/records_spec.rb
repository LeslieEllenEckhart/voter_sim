require './records.rb'
require './person.rb'
require './politician.rb'
require './voter.rb'

# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Class for "records lists" for voter simulation

describe Records do

# 1. Test instantiantion of records
#     it "can create empty records lists for politicians and voters" do
#         Leon_Voters = Records.new.@@voter_registry
#         Leon_Politicians = Records.new.@@politician_registry
#         expect(Leon_Politicians).to be_a(Array)
#         expect(Leon_Voters).to be_a(Array)
#
# #         expect(voter_list).class eq Array 
#         expect(politician_registry).to be_empty
#         expect(voter_registry).to be_empty
#         expect(politician_list).to be_instance_of(Politician)
#         expect(voter_list).to be_instance_of(Voter)
#  

    # 2. Test creation of voter.
    it "can create a voter record and add to the registry" do
        leon_voters = Records.new("V")
        voter1 = Voter.new("Dr. Seuss", "Liberal")
        leon_voters.add_voter(voter1)
#         expect(leon_voters[0]).to be_a(Voter)
        expect(leon_voters[0].name).to eq("Dr. Seuss")
        expect(leon_voters[0].politics).to eq("Liberal")
    end

    # 3. Test creation of politician record.
    it "can create a policitian record" do
        leon_politicians = Records.new("P")
        politician1 = Politician.new("Joe Kennedy", "Democrat")
        leon_politicians.add_politician(politician1)
#         expect(leon_politicians[0]).to be_a(Politician)
        expect(leon_politicians[0].name).to eq("Joe Kennedy")
        expect(leon_politicians[0].party).to eq("Democrat")
    end

    # 4. Test reporting on list of all voters. 
    it "can list all voters in the registry" do
        leon_voters = Records.new("V")
        voter1 = Voter.new("Dr. Seuss", "Liberal")
        leon_voters.add_voter(voter1)
        leon_politicians = Records.new("P")
        politician1 = Politician.new("Joe Kennedy", "Democrat")
        leon_politicians.add_politician(politician1)
        expect(self.list.results).to eq("Voter: Dr. Seuss, Liberal", "Voter: Sir Lancelot, Conservative", "Politician: Joe Kennedy, Conservative")
    end

    # 5. Test reporting on list of all politicians.
    it "can list all politicians in the registry"  do
        leon_politicians = Records.add_politician("Joe Kennedy", "Democrat")
    
    end

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
#------------------------------------------------------------       
#   it "contains either Voters or Politicians" do
#       reg_list = Registration_List.new("Orlando", "Voters")
#       expect(reg_list.list_type).to contain(Voter | Politician)
#   end
    
# #   it "can report its location and type" do
# #       reg_list = Registration_List.new("Orlando", "Voters")
# #       expect(reg_list.location).to eq("Orlando")
# #       expect(reg_list.type).to eq("Voters" | "Politicians")
# #   end

# #   it "can add a registered member" do
# #   end#
# #------------------------------------------------------------              
    
    
end
