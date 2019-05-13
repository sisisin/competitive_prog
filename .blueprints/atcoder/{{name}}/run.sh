program=a

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
run "hoge
fuga" "hogefuga"

run "hoge
fuga"
