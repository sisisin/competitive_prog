program=a

function run() {
    echo $1 | ruby "./${program}.rb"
    echo ""
}

IFS=

run "2 3
...
.#."

# run "6 6
# ..#..#
# ......
# #..#..
# ......
# .#....
# ....#."

run "5 6
..#..#
......
#..#..
......
.#...."
