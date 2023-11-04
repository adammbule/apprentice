input_strings = [
    'Pay Bill', 'RGV0WS6PSQ', 2000, '827142', '523093-CP', 1185898, '254795378012', '254795378012 - JOY KHANALI SIMIYU',
    'Pay Bill','RGV1WP4QTZ',2000,'827142','523071-CP',1138226,'254703700100 ','254703700100 - CHRISTINE N MUSUNGU',
    # Add more input tuples here if needed
]

for input_string_tuple in input_strings:
    # Convert all non-string elements to strings and join them
    input_string = ''.join(str(item) if not isinstance(item, str) else item for item in input_string_tuple)

    

# Splitting the input string using commas as separators
values = input_string.split(',')

# Cleaning up and processing each value
cleaned_values = []
for value in values:
    cleaned_value = value.strip()  # Remove leading/trailing spaces if any
    cleaned_values.append(cleaned_value)

if len(cleaned_values) == 7:
    operation = cleaned_values[0]
    code = cleaned_values[1]
    amount = cleaned_values[2]
    account1 = cleaned_values[3]
    account2 = cleaned_values[4]
    transaction_id = cleaned_values[5]
    number = cleaned_values[6].split('-')[0].strip()  # Extracting the number from the last value
    name = cleaned_values[6].split('-')[1].strip()  # Extracting the name from the last value
    
    print("Operation:", operation)
    print("Code:", code)
    print("Amount:", amount)
    print("Account 1:", account1)
    print("Account 2:", account2)
    print("Transaction ID:", transaction_id)
    print("Number:", number)
    print("Name:", name)
else:
    print("Invalid input format.")
