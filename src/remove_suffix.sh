source ./exit_on_command_failure.sh
source ./string_helper.sh

function remove_suffix() ##arg1 - "main string", arg2 - "suffix to be removed"
{   
    is_string_empty $1
    exit_on_command_failure $LINENO
    
    is_string_empty $2
    exit_on_command_failure $LINENO
 
    main_string=$1
    suffix=$2
    #output=${file_name%.*} #Remove all string after . and .
    output=${main_string%$suffix}
    echo $output
}   

: '
test()
{
    file_name="file.jpg"
    
    #suffix='.exe'
    suffix='.*' #remove . and everything after .
 
    #Note: $suffix is inside “"

    out=$(remove_suffix $file_name "$suffix")
    echo $out
    
}   

test
'
