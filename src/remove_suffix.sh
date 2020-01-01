function remove_suffix() ##arg1 - "main string", arg2 - "suffix to be removed"
{   
    main_string=$1
    suffix=$2
    #output=${file_name%.*} #Remove all string after . and .
    output=${main_string%$suffix}
    echo $output
}   

#:'
test()
{
    path1="/home/test/file.jpg"
    
    #suffix='.exe'
    suffix='.*' #remove . and everything after .
 
    #Note: $suffix is inside “"

    out=$(remove_suffix $file_name "$suffix")
    echo $out
    
}   

test
#'
