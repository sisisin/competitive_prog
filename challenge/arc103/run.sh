program=c

function run() {
    echo "start======================="
    echo $1 | ruby "./${program}.rb"
    echo
}

export RBENV_VERSION=2.3.3

IFS=

# run "4
# 3 1 3 2"

# run "6
# 105 119 105 119 105 119"

# run "4
# 1 1 1 1"

run "6
4 4 3 4 3 4"
# => 1

run "6
4 4 3 4 4 4"

run "6
1 1 2 2 3 3"

# run "4
# 1 2 3 4"
