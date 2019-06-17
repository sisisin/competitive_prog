program=c

export RBENV_VERSION=2.3.3
cnt=0
function run() {
    local input=$1
    local expect=$2
    cnt=$(($cnt + 1))
    res=$(echo $input | ruby "./${program}.rb")

    echo "start program: $cnt"
    if [[ $res == "$expect" ]]; then
        echo "correct!"
    else
        echo "wrong answer.expected: ($expect) ,actual: ($res)"
    fi
    echo "\n"
}

IFS=

echo "=======================run======================="
run "2 3 1 2" "3.000000 0"
run "2 2 1 1" "2.000000 1"
run "4 3 0 1" "6 0"
run "4 3 0 0" "6 0"
run "4 4 1 1" "8 0"
run "6 6 1 5" "18 0"
run "6 6 3 3" "18 1"
run "7 6 3 3" "21 0"
