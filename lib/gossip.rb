class Gossip
  attr_reader :author, :content
  def initialize(author, content)
    @content = content
    @author = author
  end
  def save
    gossip_to_json = Hash.new
    gossip_to_json[:author] = @author
    gossip_to_json[:content] = @content

    file = File.read("db/gossip.json")
    if file == ""
      array_json = Array.new
    else
      array_json = JSON.parse(file)
    end
    array_json << gossip_to_json

    File.open("db/gossip.json","w") do |f|
      f.write(JSON.pretty_generate(array_json))
    end
  end
end
#gossip = Gossip.new("Jean-Michel Commère", "Féfé est de Bordeaux")
#gossip.save
