##APPEND
chickens = ['butter', 'lady grey', 'stevie chicks']
len(chickens)
chickens.append('henry')

#COPY
copy_flock = chickens.copy()
copy_flock.append('romeo')

#COUNT
chickens.count('butters')
chickens.append('buters')
chickens.count('butters')

#EXTEND
chicks = ['herbert', 'annabelle']
chickens.extend(chicks)

#INDEX
'henry' in chickens
chickens.index('henry')

#INSERT
chickens.insert(0, 'tina')
chickens.insert(9, ['reggie', 'texas'])

#POP
chickens.pop() #pops the last index
chickens.pop(0) #pops the first

#REVERSE
chickens.reverse()

#SORT
chickens.sort()
nums = [34, 65, 75, 89, 34, -56, 99, -100, -2, 32, 12, 19]
nums.sort()
nums.sort(reverse=True)


