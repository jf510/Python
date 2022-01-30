target = 37
guess = None

while guess != target:
    guess = input('Please enter a guess... ')
    if guess == 'q' or guess == 'quit':
        break
    guess = int(guess)

print('ALL DONE')