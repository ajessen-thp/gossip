class Gossip
  attr_reader :author,:content
  def initialize(author, content)
    @content = content
    @author = author
  end
  def save
    gossip_to_csv = Hash.new { |@author, @content| @author[@content] =  "#{@author}: #{@content}" }
  end
end
my_gossip = Gossip.new(author, content)
my_gossip.save
