#!/bin/bash

#arg1 - "main string", arg2 - "prefix to be removed"
function remove_prefix() 
{   
    main_string=$1
    prefix=$2
    output=${main_string##$prefix}
    echo $output
}



:'
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
