# purescript-hubot

Experimental Hubot bindings for PureScript.

```sh
$ bower install krdlab/purescript-hubot
```

## Run example

```sh
$ cd example
$ ./bin/hubot -a shell -n
Hubot> ...
...

hubot test hello
Hubot> debug: hello
ok!
```

## Build example

The example uses [pulp](https://github.com/bodil/pulp).
If you'd like to build the example, execute commands as follows:

```sh
$ cd example
$ pulp browserify -O --standalone Example --to scripts/lib/example.js
```
