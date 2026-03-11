from datetime import datetime, date

def validateApptDate(inputDate):
    try: 
        # Converts user input to datetime without time part
        inputDate = datetime.strptime(inputDate,"%Y-%m-%d").date()
    except:
        # If conversion doesn't work (incorrect format, length etc.)
        return False
    
    # Valid range: 1 Dec - 5 Dec 2025
    start = date(2025, 12, 1)
    end = date(2025, 12, 5)

    if start <= inputDate <= end:
        return True
    else:
        return False

while True:
    inputDate = input("Enter desired appointment date (YYYY-MM-DD):")
    if validateApptDate(inputDate) == True:
        break
    else:
        print("Invalid date. Please enter a date between 2025-12-01 and 2025-12-05. ")
