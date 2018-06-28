def get_name(person)
  return person[:name]
end

def get_tv_show(person)
return person[:favourites][:tv_show]
end

def like_food?(person, food)
return person[:favourites][:snacks].include? food

end

def add_friend(person, friend)
  person[:friends] << friend
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def find_total(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end
