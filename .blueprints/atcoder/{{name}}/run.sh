program=a

function run() {
    echo $1 | ruby "./${program}.rb"
    echo
}

export RBENV_VERSION=2.3.3

IFS=

run "hoge
fuga"
