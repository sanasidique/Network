
echo "Enter the file path:"
read FILE


if [ -e "$FILE" ]; then
       if [ -r "$FILE" ]; then
        echo "You have read permission for $FILE."
    else
        echo "You do not have read permission for $FILE."
    fi

    if [ -w "$FILE" ]; then
        echo "You have write permission for $FILE."
    else
        echo "You do not have write permission for $FILE."
    fi

    if [ -x "$FILE" ]; then
        echo "You have execute permission for $FILE."
    else
        echo "You do not have execute permission for $FILE."
    fi
else
    echo "$FILE does not exist."
fi

