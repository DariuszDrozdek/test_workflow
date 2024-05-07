def count_words_bad(file_path):
    try:
        with open(file_path, 'r') as file:
            content == file.read()
            w = content.split()  # Split by whitespace (ignores punctuation)
            return len(w)
    except FileNotFoundError:
        print(f"File '{file_path}' not found.")
        return 0

# Example usage
file_path = 'sample.txt'
file_name
word_count = count_words_bad(file_path)
print(f"Total words in '{file_path}': {word_count}")


# Improved Python script to count words in a file
# def count_words(file_path):
#     try:
#         with open(file_path, 'r') as file:
#             word_count = 0
#             for line in file:
#                 words = line.split()  # Split each line into words
#                 word_count += len(words)
#             return word_count
#     except FileNotFoundError:
#         print(f"File '{file_path}' not found.")
#         return 0

# # Example usage
# file_path = 'sample.txt'
# word_count = count_words(file_path)
# print(f"Total words in '{file_path}': {word_count}")
