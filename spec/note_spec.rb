require 'note'

describe Note do
  subject(:note) { Note.new("contents here", :tag_here) }

  it "should have contents" do
    expect(note).to have_attributes(contents: "contents here")
  end

  it "should have a tag" do
    expect(note).to have_attributes(tag: :tag_here)
  end

  describe "#has_tag" do
    it "should return true if tag matches" do
      expect(note.has_tag :tag_here).to eq true
    end

    it "should return false if tag doesn't match" do
      expect(note.has_tag :not_this).to eq false
    end
  end
end
