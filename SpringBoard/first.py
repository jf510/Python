age = 19

if age >= 21:
    print('have a drink')
elif age >= 18:
    print('come in, no drinking')
else:
    print('get lost')



target = 37
guess = None

while guess != target:
    guess = input('Please enter a guess... ')
    if guess == 'q' or guess == 'quit':
        break
    guess = int(guess)

print('ALL DONE')
 


range(9)

for num in range(9):
    print(num)

list(range(10))

list(range(10, 50))

list(range(10, 50, 2))

list(range(10, 0, -1))



def greet(person):
    return f"Hello there, {person}"



def send_email(to_email, from_email, subject, body):
    email = f"""
        to: {to_email}
        from: {from_email}
        subject: {subject}
        ---------------------
        body: {body}
    """ 
    print(email)

send_email(subject='MEOW', to_email='jfontaine19@gmail.com', from_email='me@me.com', body='Hey! Sup?')



 
def power(num, power=2):
    return num ** power