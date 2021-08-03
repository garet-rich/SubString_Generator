require 'rspec'
require './lib/substring'

describe SubString do
  describe "#initialize" do
    it "is an instance of SubString" do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      sub_string = SubString.new(dictionary)
      expect(sub_string).to be_a SubString
      expect(sub_string.dictionary).to eq dictionary
    end
  end
  
  describe "#find_sub" do
    it "can find all substrings for single words" do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      sub_string = SubString.new(dictionary)
      expected_result = {"below"=>1, "low"=>1}
      expect(sub_string.find_sub("below").length).to eq expected_result.length
    end

    it "can find all substrings for multiple words" do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      sub_string = SubString.new(dictionary)
      expected_result = {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
      expect(sub_string.find_sub("Howdy partner, sit down! How's it going?").length).to eq expected_result.length
    end
  end
end