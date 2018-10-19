class Gossip
  attr_reader :author,:content
  def initialize(author, content)
  @content = content
  @author = author
end
end
my_gossip = Gossip.new(author, content)
my_gossip.save
