require "spec_helper"

describe "Character" do

    it "is able to create a new character" do
        white_panther = Character.new(name: "White Panther", alias: "T-Pain")
        expect(white_panther.name).to eq("White Panther")
    end

end

describe "#first_name" do 
it "has a first name" do 
    student.first_name = "Steve"
    expect(student.first_name).to eq("Steve")
end
end

describe "#first_name" do
it "has a first name" do
student.first_name = "Steve

describe "add_student" do
it 'is able to add a student' do
    @school.add_student("AC Slater", 10)
    expect(@school.roster).to eq({10 => ["AC Slater"]})     end