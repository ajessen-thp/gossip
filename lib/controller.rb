require "view"
require "gossip"

def create_gossip
  Gossip.new
  gossip = Gossip.new("Jean-Michel Commère", "Féfé est de Bordeaux")
  gossip.save
