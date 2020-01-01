#!/bin/bash

source ./exit_on_command_failure.sh
source ./string_helper.sh

#arg1 - "main string", arg2 - "prefix to be removed"
function remove_prefix() 
{   
    
    is_string_empty $1
    exit_on_command_failure $LINENO
    
    is_string_empty $2
    exit_on_command_failure $LINENO
    
    main_string=$1
    prefix=$2
    output=${main_string##$prefix}
    echo $output
}



: '
test()
{
    path1="/home/test/file.jpg"
    prefix='*/' #remove / and everything before /
    
    #Note: $prefix is inside “"
    
    file_name="$(remove_prefix $path1 "$prefix")"
    echo $file_name
}   

test
'
