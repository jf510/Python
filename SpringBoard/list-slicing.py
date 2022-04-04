
# lst[start:stop:step]
# start: Index to begin retrieval (default start)
# stop: Index to end retieval (default end)
# step: Number to step (default 1)

nums = list(range(0,100,1))
#examples
nums[50:60:1]
nums[90:]
nums[90::2]
nums[:10]
nums[:10:5]
nums[::5]
nums[::-10]


####SPLICING

colors = ['red, yellow, green, orange']
colors[0:1] = ['dark red', 'pink']
colors[3:]
colors[5:] = [] #removing 
colors[::] = []