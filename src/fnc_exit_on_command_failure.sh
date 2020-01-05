function exit_on_command_failure()
{
    if [ $? -ne 0 ]; then
        if [ -z $1 ]; then
            echo "[ error ] exec failed, exitting"
        else
            echo "[ error ] exec failed, exitting ( lineno : $1)"
        fi
        
        exit 1
    fi
}

#example 1 [exit printing line number]
#exit_on_command_failure $LINENO

#example 2 [exit without printing line number]
#exit_on_command_failure

