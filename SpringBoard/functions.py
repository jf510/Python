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