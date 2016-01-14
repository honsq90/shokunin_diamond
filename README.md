# Diamond Challenge

Input the middle character to draw a diamond
e.g if you run this program with input `E` your output will be..

```
    A
   B B
  C   C
 D     D
E       E
 D     D
  C   C
   B B
    A
```

### To run

** You must have Ruby 2.0+ installed **

If you have RVM already installed, `rvm install 2.0.0`

Otherwise, `brew install ruby` to get started

If you are using Ruby 2.2+, you will need to run `gem install test-unit` first as it's not bundled together any more.

Then use the `./go.sh` script.

Run tests
`./go.sh test`

Run app, like so `./go.sh run <input>`
```

./go.sh run A
./go.sh run E
...
```

### Credits
Credits to @joesustaric for the README and go.sh template.
