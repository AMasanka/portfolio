cd ..
echo "The following lines contain sed statements"
grep -r sed
echo "The following lines start with letter m"
grep -r "^m"
echo "The following lines contain 3-digit numbers"
grep -r "[0-9][0-9][0-9]"
echo "The following lines contain echo statements with atleast 3 words"
grep -E -r '^echo\s*\"\w*\s\w*\s\w*\s*.*\"'
echo "The following lines make a good password"
#grep -r 

