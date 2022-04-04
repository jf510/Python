 # CREATE A NEW LIST THAT ONLY HAS THE EVENS
 
nums = [1,2,3,4,5,6,7,8,9]

evens = []
for n in nums:
    if n % 2 == 0:
        evens.append(n)

# this is the best way to do it in python:
evens = [num for num in nums if num % 2 == 0]


# double each number in nums

[num * 2 for num in nums] # this reads: double each num for each num in nums
# [what_to_append for thing in list]



###########

nums_a = [2,4,6,8]
[num**2 for num in nums_a]

# or

[num**2 for num in [2,4,6,8]]
[x for x in range(10) if x % 2 == 0]
[x*2 for x in range(10) if x % 2 == 0]


[char.upper() for char in 'lmfao']


##########
[num for num in range(10, 10, 25)]


[x for x in range(3)]
[[]for x in range(3)]
[[0 for y in range(3)] for x in range(3)]


# NESTED COMPREHENSION
def gen_board(size, initial_val=None):
    return [[initial_val for x in range(size)] for y in range(size)]



############

scores = [55, 66, 76, 56, 88, 99, 12, 88, 84]
grades = ['PASS' for score in scores if score >= 70]


# ELSE STATEMENTS
# [do_this if something else do this for thing in things]
grades = ['PASS' if score >= 70 else 'FAIL' for score in scores]





##### DICTIONARY SET COMPREHENSIONS

{day: 0 for day in 'MTWRFSU'}

{num : num*num for num in range(1,20)}
{num : num*num for num in range(1,20) if num % 2 == 0}

#JUST A SET

{char for char in 'abracadabra'}
{char for char in 'hello darkness my old friend' if char in 'aeiou'}
{char for char in 'hello darkness my old friend' if char not in 'aeiou'}