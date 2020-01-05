
function is_string_empty()
{
    if [ -z $1 ]; then
        echo "[ error ] string is empty"
        return 1
    fi

    return 0
}

#example1
#is_string_empty ""

#example2
#is_string_empty "test string"
