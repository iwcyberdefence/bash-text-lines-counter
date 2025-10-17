# bash-text-lines-counter
A Bash script that counts all .txt files &amp; total lines across all .txt files in a specified directory.
# IW-Cyber-Defence

---------------------------
# Bash Text Lines Counter

A Bash script that scans a directory, finds all `.txt` files, counts their total lines, and optionally prints every line to the terminal.

---

## 📌 Features
- Checks if the directory exists before processing  
- Finds all `.txt` files (recursively)  
- Counts:
  - Total number of `.txt` files  
  - Total number of lines across all `.txt` files  
- Asks the user if they want to display all lines  
- Handles filenames with spaces safely (`find -print0`)  
- Clean, readable output formatting  

---

## ⚙️ Usage
```bash
chmod +x count_text_lines.sh
./count_text_lines.sh
```
--------------------------------------------------------
# Execution 

<img width="516" height="294" alt="image" src="https://github.com/user-attachments/assets/cb527066-c9db-4da1-9e02-ec0ba517666d" />

# OutPut example

Enter path of directory : /home/user/documents

Number of all .txt files : 8
-------------------------------------
Total Number of Lines in all .txt files : 1546
-------------------------------------

Do you want to print all these lines? Y or N : y
(--->)  First line from file1
(--->)  Another line from file2
...

# OutPut Practical Example

<img width="923" height="751" alt="image" src="https://github.com/user-attachments/assets/cf9a1866-bef3-428c-a544-c67717c8793b" />

# ----------------- End -----------------

