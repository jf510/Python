

#chickens = {'name': 'butters', 'age': '6 months', 'breed': 'silkie'}
#stuff = {True : 34, 100: 'awesome'}
#
#'breed' in chickens
#chickens['breed']
#chickens['name']
#chickens['age'] = 12


dict([[True,1],[False,1]])


# ITERATING OVER DICTIONARIES

chicken = {
    'name': 'Lady Grey', 
    'breed': 'Silkie', 
    'total_egg_count': 12, 
    'egg_chart': {'M': True, 
        'T': False, 
        'W': True, 
        'R': False, 
        'F': True
        },
        'coop_mates': ['Butters', 'Harry', 'Berry']
    }

#for key in chicken.keys():
#    print(key)
#
#
#for value in chicken.values():
#    print(value)
#
#for pair in chicken.items():
#    print(pair)

for (k,v) in chicken.items():
    print(k, '--->', v)


# .GET
chicken.get('sex')
chicken.get('sex', 'unsexed')
chicken['sex'] = 'Hen'


# If we want to turn the keys into a list:
keys = list(chicken.keys())
keys.sort()


# COPY

nuggets = chicken
nuggets = chicken.copy()


# POP
chicken.pop('name')
chicken.popitem()


{}.fromkeys('MTWRF', True)

chicken.clear()

