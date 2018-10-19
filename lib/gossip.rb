class Gossip
  attr_reader :author,:content
  def initialize(author, content)
    @content = content
    @author = author
  end
  def save
    gossip_to_csv = Hash.new
    gossip_to_csv[:author] = @author
    gossip_to_csv[:content] = @content
    puts gossip_to_csv
  end
end
my_gossip = Gossip.new("poney", "le cheval")
my_gossip.save
