# Piquant - An Efficient Wordlist Generator for Password Cracking

Piquant is a powerful Wordlist generator designed to enhance password cracking capabilities. It offers the following features:

- Flexible word permutation: Users can easily switch between input words to generate a variety of combinations.
- Customizable password patterns: Piquant can create password lists with or without special characters, as specified by the user.
- Smart pattern analysis: The tool leverages common techniques and patterns used by people while setting passwords, increasing the chances of success.
- Birth date integration: To account for common practices, Piquant asks for the user's birth date to include in the password generation process.
- High uniqueness: On average, Piquant generates around 25,000 unique passwords when provided with three specific words for optimal results.

## Usage

### Installation

To get started, clone the Piquant repository:

```shell
git clone https://github.com/m4xx101/piquant.git
Setting Permissions
After cloning, set the necessary permissions for the script:
```

```shell
Copy code
chmod +x piquant.sh
Running the Generator
Execute the Piquant script, directing the output to a specific path for saving the generated password list:
```
```shell
Copy code
./piquant.sh > /path/to/save/list.txt
Note: Ensure you include the path with the ">" symbol to save the password list to a file, preventing the terminal from being flooded with 25,000 or more words.
```

For example, to save the list on the desktop:

```shell
Copy code
./piquant.sh > /root/Desktop/list.txt
Done
```
Congratulations! You now have an awesome list of passwords at your disposal, perfect for penetration testing and using with password brute-forcing tools!

Feel free to edit the code to suit your specific needs and optimize it further for your usage. If you have any questions or encounter issues, don't hesitate to post them in the GitHub issue section. I'll be actively monitoring and addressing any queries!

Disclaimer: All data and information provided by this tool is for informational and educational purposes only. The tool's creator reserves the right to modify its policies without prior notice. The tool's creator shall not be held responsible for any actions performed by users. The primary focus of this tool is on Programming, Tutorials, Security Guides, Pentesting, and Ethical hacking.
