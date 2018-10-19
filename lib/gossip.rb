class Gossip
  attr_reader :author,:content
  def initialize(author, content)
    @content = content
    @author = author
  end
  def save
<<<<<<< HEAD
    my_gossip = Gossip.new(author, content)
    my_gossip.save
  end
end
=======
    gossip_to_csv = Hash.new { |@author, @content| @author[@content] =  "#{@author}: #{@content}" }
  end
end
my_gossip = Gossip.new(author, content)
my_gossip.save
>>>>>>> 435c258c6a63788b64d43e0a05e585f5a3d9b45d
