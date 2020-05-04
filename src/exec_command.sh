#prerequisite check 


#print both success and failures
ExecAndExitOnError1 () {
    eval $1
    if [ $? -ne 0 ]; then
        echo "[ exec_error   ] -> \""$1"\""
        exit 1
    else
        echo "[ exec_success ] -> \""$1"\""
    fi
}

#print only failures
ExecAndExitOnError2 () {
    eval $1
    if [ $? -ne 0 ]; then
        echo "[ exec_error   ] -> \""$1"\""
        exit 1
    fi
}

#print both success and failures
ExecAndLogStatus () {
    eval $1
    if [ $? -ne 0 ]; then
        echo "[ exec_error   ] -> \""$1"\""
    else
        echo "[ exec_success ] -> \""$1"\""
    fi

}

#print only failures
ExecAndLogError () {
    eval $1
    if [ $? -ne 0 ]; then
        echo "[ exec_error   ] -> \""$1"\""
    fi
}


#ExecAndExitOnError1 "which ssh-keygen &> /dev/null"
#ExecAndExitOnError2 "which ssh-keygen &> /dev/null"


#ExecAndLogError "which ssh-keygen1 &> /dev/null"
#ExecAndLogStatus "which ssh-keygen &> /dev/null"


