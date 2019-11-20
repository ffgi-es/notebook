class Note
  attr_reader :contents, :tag
  def initialize contents, tag
    @contents = contents
    @tag = tag
  end

  def has_tag tag
    @tag == tag
  end
end
