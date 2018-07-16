#!/bin/sh
rm -f hx-vector2d.zip
zip -r hx-vector2d.zip src *.hxml *.json *.md run.n
haxelib submit hx-vector2d.zip $HAXELIB_PWD --always