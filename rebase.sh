#!/bin/bash

git checkout main
git pull upstream
git push zaphodbe main

branches=( "dev" )
for x in "${branches[@]}"
do
  echo Rebasing branch $x
  git checkout $x
  git rebase main
  git push -f zaphodbe $x
done

