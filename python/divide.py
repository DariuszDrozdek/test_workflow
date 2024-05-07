
def divide(a, b):
    try:
        return a / b
        # return '{:.2f}'.format(a / b)
    except ZeroDivisionError:
        return "Cannot divide by zero!"

# Example test cases
print(divide(11, 2))   # Output: 5.50
print(divide(5, 0))   # Output: "Cannot divide by zero!"

