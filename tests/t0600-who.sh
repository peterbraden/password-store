#!/usr/bin/env bash

test_description='Who check'
cd "$(dirname "$0")"
. ./setup.sh

test_expect_success 'Make sure who echoes recipients' '
	"$PASS" init $KEY1 &&
	"$PASS" generate Something/neat 19 &&
	"$PASS" generate Anotherthing/okay 38 &&
	"$PASS" generate Fish 12 &&
	"$PASS" generate Fishthings 122 &&
	"$PASS" generate Fishies/stuff 21 &&
	"$PASS" generate Fishies/otherstuff 1234 &&
  [[ $("$PASS" who) ]]
'

test_done
