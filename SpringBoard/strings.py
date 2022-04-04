
msg = "Hello"
also = 'Oh hi!'

long_msg = """This can continue for multiple lines"""

greet = f'Hi, {fname}, {lname}'

price = 3.50
qty = 7
print(f'Your total is {price * qty}')


str(5.6)


#######   STRING METHODS

#COUNT
msg.count('h')

#ENDSWITH
msg.endswith('n')
msg.endswith('!n')

#STARTSWITH
person = 'Mr. Jones'
person.startswith('Mr')

#FIND
person.find('.')
msg.find('!') # gives us just the first match

#ISDIGIT
'hello4'.isdigit()
'23548775664'.isdigit()

#JOIN
'|'.join(chickens)
'.'.join('LOL')
'-'.join()

'LOL'.lower()
'lol'.upper()


#REPLACE
things = 'apple-tomatoes-pickles'
things.replace('-', '=')
things.replace('-','=', 1)
text = 'I hate you so much'
text.repalce(' ', '...')











