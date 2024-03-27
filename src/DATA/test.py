# Open the file in read mode
with open('txt_0.txt', 'r') as file:
    # Read the contents of the file and split them into lines
    lines = file.readlines()
    
    # Optionally, you may want to remove any trailing whitespace characters
    lines = [line.strip() for line in lines]
    
    # If each line represents an item, you can directly use 'lines' as your list
    # If the file content is formatted differently, you might need additional processing
    
    # Example: if each line contains comma-separated values
    # lines = [line.split(',') for line in lines]
    
    # Example: if you want to convert each line to integer
    # lines = [int(line) for line in lines]
    
# Now 'lines' contains the contents of the file as a list
print(lines)
