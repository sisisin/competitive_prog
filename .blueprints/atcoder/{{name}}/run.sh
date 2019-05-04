program=a

function run() {
    echo $1 | ruby "./${program}.rb"
}

IFS=

run "hoge
fuga"
