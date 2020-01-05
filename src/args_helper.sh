argc=$#
source ./fnc_string_helper.sh
source ./fnc_exit_on_command_failure.sh

#arg1 -> passed argument count
#arg2 -> expected argument count
function verify_arg_count()
{
    passed_arg_count=$argc
    expected_arg_count=$2

    is_string_empty $expected_arg_count
    exit_on_command_failure $LINENO

    if [ $passed_arg_count -lt $expected_arg_count ]; then
        echo "[ error ] argument count Less than expected"
        echo "[ info  ] expected argument count = $expected_arg_count"
        return 0
    fi

    return 1
}

#example 
#verify_arg_count $argc <expected_arg_coount>
