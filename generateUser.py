import csv
import random

# Lists of random data
names = ['Alice', 'Bob', 'Charlie', 'David', 'Emma', 'Frank', 'Grace', 'Henry', 'Isabel', 'Jack']
surnames = ['Smith', 'Johnson', 'Williams', 'Jones', 'Brown', 'Davis', 'Miller', 'Wilson', 'Moore', 'Taylor']
locations = ['New York', 'Los Angeles', 'Chicago', 'Houston', 'Phoenix', 'Philadelphia', 'San Antonio', 'San Diego', 'Dallas', 'San Jose']
universities = ['Harvard University', 'Stanford University', 'Massachusetts Institute of Technology', 'California Institute of Technology', 'Princeton University', 'Yale University', 'University of Chicago', 'University of Pennsylvania', 'Columbia University', 'Johns Hopkins University']
interests = ['Reading', 'Writing', 'Music', 'Sports', 'Traveling', 'Photography', 'Cooking', 'Gaming', 'Hiking', 'Movies']

# Function to generate random data
def generate_random_data():
    name = random.choice(names) + ' ' + random.choice(surnames)
    age = random.randint(18, 67)
    gender = random.choice(['Male', 'Female'])
    location = random.choice(locations)
    university = random.choice(universities)
    interest = random.choice(interests)
    return [name, str(age), gender, location, university, interest]

# Generate CSV file
with open('users.csv', 'w', newline='') as csvfile:
    fieldnames = ['name', 'age', 'gender', 'location', 'university', 'interest']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

    writer.writeheader()
    for _ in range(100):
        data = generate_random_data()
        writer.writerow({fieldnames[i]: data[i] for i in range(len(fieldnames))})

print("CSV file generated successfully.")
