
function help {
    echo "Usage: $0 [options]"
    echo "Options:"
    echo "  -h, --help: Show this help message"
    echo "  -a, --a: Option a"
    echo "  -b, --b: Option b"
    echo "  -c, --c: Option c"
}

while [ "$1" != "" ]; do
    case $1 in
        -h | --help )           help
                                exit
                                ;;
        -a | --a )              shift
                                a=$1
                                ;;
        -b | --b )              shift
                                b=$1
                                ;;
        -c | --c )              shift
                                c=$1
                                ;;
        * )                     help
                                exit 1
    esac
    shift
done

if [ -z "$a" ]; then
    echo "Option a is required"
    help
    exit 1
fi

if [ -z "$b" ]; then
    echo "Option b is required"
    help
    exit 1
fi

if [ -z "$c" ]; then
    echo "Option c is required"
    help
    exit 1
fi

echo "a: $a"
echo "b: $b"
echo "c: $c"