
def game(move=0)
    puts "pick forward, left or right"
    choice = gets.chomp
    if choice == "forward"
        move += 1
        if move == 2
            return "win"
        end
        return game(move)
    elsif choice == "left"
        return "dead, goblin"
    elsif choice == "right"
        return "dead, werewolf"
    else
        return game(move)
    end
end