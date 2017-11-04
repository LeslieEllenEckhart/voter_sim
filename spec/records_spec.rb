# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Test for Records class object.
#
require './records.rb'

describe Records do

    # 1. Test creation of voter.
    it "can create a voter record and add to the registry array" do
        records  = Records.new("V")
        records.create_voter("Dr. Seuss", "Liberal")
        
        expect(records.voter_list.count).to eq(1)
#         expect(records[0].name).to eq("Dr. Seuss")
#         expect(records[0].political_affiliation).to eq("Liberal")
    end

    # 2. Test creation of politician record.
    it "can create a policitian record and add to the policitian registry" do
        records  = Records.new("P")
        records.create_politician("Joe Kennedy", "Democrat")
        
        expect(records.politician_list.count).to eq(1)
     
    end

    # 3. Test reporting on list of all voters. 
    it "can list all voters and politicians in the registry" do
        
        voters = Records.new("V")
        voters.create_voter("Dr. Seuss", "Liberal")
        politicians = Records.new("P")
        politicians.create_politician("Joe Kennedy", "Democrat")
        
        expected_result_voters = " Voter, Dr. Seuss, Liberal\n"
        expected_result_politicians = " Politician, Joe Kennedy, Democrat\n"
        expect(voters.list_voters).to eq(expected_result_voters)
        expect(politicians.list_politicians).to eq(expected_result_politicians)
    end

    # 4. Test searching on voter by name.
    it "can search for a voter by name" do
        records  = Records.new("V")
        records.create_voter("Dr. Seuss", "Liberal")
        records.create_voter("Lindsay Lohan", "Socialist")
        records.create_voter("Taylor Swift", "conservative")
        # need index of an existing voter
        index_for_existing_voter = records.search_voter("Lindsay Lohan")
        # need to see if not found, index is nil
        index_for_nonexisting_voter = records.search_voter("James Bond")
        
        expect(index_for_existing_voter).to eq(1)
        expect(index_for_nonexisting_voter).to eq(nil)
    end
   
    # 5. Test searching on politician by name.
    it "can search for a politician by name" do
        records  = Records.new("P")
        records.create_politician("JFK", "Democrat")
        records.create_politician("RFK", "Independent")
        records.create_politician("Reagan", "Republican")
        # need index of an existingpolitician
        index_for_existing_politician = records.search_politician("RFK")
        # need to see if not found, index is nil
        index_for_nonexisting_politician = records.search_politician("Jane Bond")
        
        expect(index_for_existing_politician).to eq(1)
        expect(index_for_nonexisting_politician).to eq(nil)
    end
        
    # 6. Test update of a voter.
    it "can update a voter in the registry" do
         records  = Records.new("V")
         records.create_voter("Dr. Seuss", "Liberal")
         records.create_voter("Lindsay Lohan", "Socialist")
        # search by first arg and update with 2nd and 3rd args
        records.update_voter("Dr. Seuss", "Jimmy John", "Neutral")
        
        expect(records.voter_list[0].name).to eq("Jimmy John")
        expect(records.voter_list[0].political_affiliation).to eq("Neutral")
    end

    # 7. Test update of a politician.
    it "can update a politician in the registry" do
         records = Records.new("P")
        
        records.create_politician("John Doe", "Republican")
        records.create_politician("Lindsay Lohan", "Democrat")
        
        records.update_politician("John Doe", "James Bond", "Democrat")
        
        expect(records.politician_list[0].name).to eq("James Bond")
        expect(records.politician_list[0].registered_party).to eq("Democrat")
    end


    # 8. Test deletion of a voter.
    it "can delete a voter from the registry" do
        
        records = Records.new("V")

        records.create_voter("Dr. Seuss", "Liberal")
        records.create_voter("Lindsay Lohan", "Socialist")
        expect(records.voter_list.count).to eq(2)

        records.delete_voter("Lindsay Lohan")
        expect(records.voter_list.count).to eq(1)
        expect(records.search_voter("Lindsay Lohan")).to eq(nil)
    end
  
    # 9. Test deletion of a politician.
    it "can delete a politician from the registry" do
   
        records = Records.new("P")
        
        records.create_politician("John Doe", "Republican")
        records.create_politician("Lindsay Lohan", "Democrat")
        expect(records.politician_list.count).to eq(2)
        
        records.delete_politician("Lindsay Lohan")
        expect(records.politician_list.count).to eq(1)
        expect(records.search_politician("Lindsay Lohan")).to eq(nil)
    end
    
end