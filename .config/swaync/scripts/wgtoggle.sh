#!/usr/bin/env bash

TOGGLE=$HOME/.toggle

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    wg-quick up wg0
else
    rm $TOGGLE
    wg-quick down wg0
fi