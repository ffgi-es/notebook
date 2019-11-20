class Notebook
  def initialize
    @notes = []
  end

  def add_note note
    @notes.push note
  end

  def search_by_tag tag
    @notes.select { |note| note.has_tag tag }
  end

  def print_notes tag = nil
    notes = tag.nil? ? @notes : search_by_tag(tag)
    notes.each do |note|
      puts note.tag.to_s + ":\n---\n"
      puts note.contents + "\n\n"
    end
  end
end
