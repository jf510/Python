# SET OPERATIONS

lemon = {'sour', 'yellow', 'fruit', 'bumpy'}
banana = {'fruit', 'smooth', 'sweet', 'yellow'}
orange = ['fruit', 'bumpy', 'orange', 'sweet']

lemon | banana
banana.union(lemon) # these are the same

all_traits = lemon | banana


banana | lemon | {'fruit', 'tart', 'green'}


# INTERSECTION

lemon & banana # returns the things in common
banana.intersection('lemon')

# DIFFERENCE

lemon - banana # returns the things not in common
lemon.difference(banana)

# SYMMETRIC DIFFERENCE

banana ^ lemon
banana.symmetric_difference(lemon)

#SETS AND LISTS TOGETHER
# if we try to used orange.intersection(lemon), it will not work because it is a list
# we need to use lemon.intersection(orange)
lemon.intersection(orange)



for adj in banana:
    print(adj)

for adj in banana | lemon | set(orange):
    print (adj)

# switching lists and sets
# if orange is a set:
list(orange)
# if lemon is a list:
set(lemon)


