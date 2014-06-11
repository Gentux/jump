_jump()
{
  local cur

  COMPREPLY=()
  cur=${COMP_WORDS[COMP_CWORD]}

  COMPREPLY=( $( compgen -W '$( ls $HOME/.marks 2>&1 \
        | cut -d"{" -f2 | tr -d "}" | tr "|" " " )' -- $cur ) )
}
complete -F _jump jump
