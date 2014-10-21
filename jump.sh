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
    ls -l $MARKPATH | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}
[ -f .jump-completion.bash ] && source .jump-completion.bash
