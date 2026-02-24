#!/bin/zsh

# while-read: read lines from a file

while IFS= read -r line; do
	if [[ $line == '|'* ]] &&                       \
     		[[ $line != '| Distro'* ]] &&                \
     		[[ ! $line =~ '^\|[[:space:]-]+\|$' ]] &&    \
     		[[ $line =~ '[[:alnum:]]' ]]; then

    IFS='|' read -r _ distro version release type _ <<< "$line"

    printf "Distro: %s\tVersion: %s\tReleased: %s\n" \
      "$distro" \
      "$version" \
      "$release"
  fi
done < distros.md
