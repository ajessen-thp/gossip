class View

  def create_gossip

    puts "Quel est l'auteur du gossip ?"
    print "> "
    author = gets.chomp
    puts "Quel est le contenu du gossip ?"
    print "> "
    content = gets.chomp

    params = Hash.new
    params[:author] = author
    params[:content] = content

    return params

  end

end
