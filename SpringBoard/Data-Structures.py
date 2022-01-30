#  //////////  LISTS  ///////////

#In [1]: scores = [4,67, 98, 65, 32, 88]
#
#In [2]: scores
#Out[2]: [4, 67, 98, 65, 32, 88]
#
#In [3]: list('hello')
#Out[3]: ['h', 'e', 'l', 'l', 'o']
#
#In [4]: list(4545743)
#--------------------------------------------------------------------------
#TypeError: 'int' object is not iterable
#
#In [5]: list(range(10,20,2))
#Out[5]: [10, 12, 14, 16, 18]
#
#In [6]: list(range(10,20,3))
#Out[6]: [10, 13, 16, 19]


# LISTS - IN

vegan_no_nos = ['eggs', 'milk', 'meat', 'fish', 'figs']

pie_ingredients = ['flour', 'apples', 'sugar', 'eggs', 'salt']

for food in pie_ingredients:
    if food in vegan_no_nos:
        print(f"Oh No! Cannot eat {food}! It's not vegan")
    else: 
        print(f"Yum! I like {food}")


#In [3]: special_characters = 'asgdfkjlh'
#
#In [4]: '#' in special_characters
#Out[4]: False


