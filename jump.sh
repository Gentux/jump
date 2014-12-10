export MARKPATH=$HOME/.marks
for i in $MARKPATH/*; do
    export j$(basename $i | tr '.' '_' | tr '-' '_')=$(readlink $i);
done

function jump {
    cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
}
function mark {
    mkdir -p $MARKPATH; ln -s $(pwd) $MARKPATH/$1
    export j$(${1} | tr '.' '_' | tr '-' '_')=$(pwd)
}
function unmark {
    rm -i $MARKPATH/$1
}
function marks {
    for mark in $MARKPATH/* ; do
        MARKNAME=$(basename $mark);
        MARKTARGET=$(readlink $mark);
        echo "${MARKNAME} -> ${MARKTARGET}";
    done | column -t
}
[ -f .jump-completion.bash ] && source .jump-completion.bash
