require_relative "spec_helper"
Character.destroy_all

describe "Character" do

    it "is able to create a new character" do
        yellow_panther = Character.create(name: "Yellow Panther", alias: "T-Bone")
        expect(Character.find_by(name: "Yellow Panther", alias: "T-Bone")).to eq(yellow_panther)
    end

    it "has a name" do 
        superwoman = Character.create(name: "Superwoman", alias: "Cam")
        expect(Character.find_by(name: "Superwoman")).to eq(superwoman)
    end

    it "has an alias" do
        wonderwoman = Character.create(name: "Wonderman", alias: "Diane")
        expect(Character.find_by(alias: "Diane")).to eq(wonderwoman)
    end

    it "has a list of comics for each character" do
        sam = Character.create(name: "Sam", alias: "Samantha")
        sams_series = Series.create(name: "Sam's Series", description: "This is Sam's series description.")
        sams_comic = Comic.create(name: "Sam's Comic", publish_date: 1998, series: sams_series, author: "Anon", storyline: "This is Sam's storyline.")
        sam.comics << sams_comic
        expect(sam.comics.include?(sams_comic)).to eq(true)
    end
   
end










# describe "#first_name" do 
# it "has a first name" do 
#     student.first_name = "Steve"
#     expect(student.first_name).to eq("Steve")
# end
# end

# describe "#first_name" do
# it "has a first name" do
# student.first_name = "Steve

# describe "add_student" do
# it 'is able to add a student' do
#     @school.add_student("AC Slater", 10)
#     expect(@school.roster).to eq({10 => ["AC Slater"]})     end