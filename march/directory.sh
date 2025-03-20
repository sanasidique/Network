
echo "Enter the file or directory path:"
read FILE

if [ -d "$FILE" ]; then
    echo "$FILE is a directory."
else
    echo "$FILE is not a directory."
fi

