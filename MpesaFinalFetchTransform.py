input_strings = [
    ('Pay Bill Online', 'RH213UZ0BR', 3000, '827142', '525361-CP', 348702, '254704675028', '254704675028 - POLYCARP AGOI'),
    ('Pay Bill Online','RH12XWG4ZW',12050,'827142','523679-CP',501295,'254704777776 ','254704777776 - JAMES OMONDI ONYANGO'),
    ('Pay Bill Online','RGV9WZ6W4P',6000,'827142','523148-CP',438797,'254717017466 ','254717017466 - DAVID LIVINGSTONE OLUGA'),
    ('Pay Bill Online','RH293GAA6J',1610,'827142','525271-CP',35320,'254717081966 ','254717081966 - MUTWIRI MWINGIRWA'),
    ('Pay Bill Online','RH15XOMMG3',2000,'827142','523530-CP',971566,'254717654980 ','254717654980 - Rehema Awuor'),
    ('Pay Bill Online','RH11XOPLCB',2500,'827142','523532-CP',974046,'254717654980 ','254717654980 - Rehema Awuor'),
    ('Pay Bill Online','RH213T6R1F',1100,'827142','525351-CP',289933,'254717694644 ','254717694644 - MUINDE RICHARD'),
    ('Pay Bill Online','RH14XKFUA6',6600,'827142','523464-CP',708282,'254717811137 ','254717811137 - SHALYN NYAMBURA'),
    ('Pay Bill Online','RGV3X24G4T',7273,'827142','523182-CP',510331,'254705120629 ','254705120629 - GERTRUDE TALA'),
    ('Pay Bill Online','RH13XUF73Z',6800,'827142','523635-CP',373473,'254705352046 ','254705352046 - JENTRIX AUMA OUMA'),
    # Add more input tuples here if needed
]

output_file = "output.sql"

with open(output_file, "w") as f:
    for input_string_tuple in input_strings:
        cleaned_values = []

for input_string_tuple in input_strings:
    cleaned_values = []

    for item in input_string_tuple:
        if isinstance(item, str):
            cleaned_value = item.strip()
        else:
            cleaned_value = str(item)
        cleaned_values.append(cleaned_value)

    if len(cleaned_values) == 8:
        operation = cleaned_values[0]
        if 'Online' in operation:
            operation = operation.replace(' Online', '')  # Remove ' Online' from operation
            
        code = cleaned_values[1]
        amount = cleaned_values[2]
        account1 = cleaned_values[3]
        account2 = cleaned_values[4]
        transaction_id = cleaned_values[5]
        number = cleaned_values[6].strip()  # Remove extra spaces
        name_parts = cleaned_values[7].split('-')
        
        if len(name_parts) == 2:
            name_info = name_parts[1].strip()
            name_parts = name_info.split()
            
            if len(name_parts) == 3:
                first_name = name_parts[0]
                middle_name = name_parts[1]
                last_name = name_parts[2]
            elif len(name_parts) == 2:
                first_name = name_parts[0]
                middle_name = 'NULL'  # Set middle name as NULL
                last_name = name_parts[1]
            else:
                first_name, middle_name, last_name = '', '', ''
        else:
            first_name, middle_name, last_name = '', '', ''
        
        sql_insert = (
            "INSERT INTO MPESA.MPESA_PAYMENT_CONFIRMATION (TRANSTYPE, TRANSID, TRANSAMOUNT, BUSINESSSHORTCODE,BILLREFNUMBER, ORGACCOUNTBALANCE, MSISDN, FIRSTNAME, MIDDLENAME, LASTNAME,TRANSTIME, SMS_SENT,CONFIRMATION_STATUS, P_FLAG, IMARIKA_FLAG, IGAS_FLAG, POLLKAVA, KAVA_FLAG, P_KAVA, P_AIMS, CELLULANT_FLAG, COLUMN2)"
            "VALUES ('{}', '{}', {}, '{}', '{}', {}, '{}', '{}', '{}', '{}', SYSDATE, 0, 0, '0', '0', 0, 0, 0, 0, 0, 0, '0');"
            .format(operation, code, amount, account1, account2, transaction_id, number, first_name, middle_name, last_name)
        )

        f.write(sql_insert + "\n")
    else:
        f.write("Invalid input format.\n")
        
print("SQL statements written to", output_file)
