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

def money_transfer(person4,person5, money)

person4[:monies] -= 10
person5[:monies] += 10
end

def get_favourite_foods(people)
snacks = []
for person in people
  snacks << person[:favourites][:snacks]
end
snacks.flatten!
return snacks
end

def no_friends(people)
  loners = []
  for person in people
    if person[:friends].empty?
      loners << person
    end
  end
return loners
end
