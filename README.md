# Elm — Web Development Club @ Iowa State University

This is an introduction to the Elm programming language, which is similar to
languages like TypeScript in the sense that it transpiles to JavaScript.

## Motivation

- You hate writing JavaScript.
- You're tired of seeing `null` this and `null` that and cannot read property
  blah blah blah of `undefined` in your browser console.
- You're getting bored of frontend development and want to spice things up.

## Functional Programming

This is a programming paradigm in the declarative family, where programs describe
*what* should be done instead of *how* to do it. This differs from paradigms in
the imperative family, which is what you may be used to (Java, C, etc.).

Functional programming avoids mutable state, such as a variable whose value can
change over time. Another key aspect is that functions have no hidden input
and no hidden output. They do not change variables that exist outside the
function. For example, if a function takes two inputs, a and b, and returns
their sum, it meets the criteria. If you put in the same a and b, you always
get the same output.

Read this [blog post](http://blog.jenkster.com/2015/12/what-is-functional-programming.html)
to learn more. It's well written and easy to understand.

## Walkthrough

Let's start up the REPL and type some values.

```
$ elm repl
> 2 + 2
4
> "Zebra"
"Zebra"
```

What do you think will happen here?

```shell
> "Zebra" ++ "fish"
???
```

### Functions

Let's write a function! Can you figure out how to call it in the REPL?

```shell
> greet name = "Hello " ++ name ++ "!"
<function>
```

We can make it take multiple arguments.

```shell
> greet otherName myName = "Hello " ++ otherName ++ "!" ++ " My name is " ++ myName ++ "!"
<function>
```

All arguments must be primitive values, or else you need to put parenthesis around
the grouping. The output below appears messed up. Why is the output like this?
Can you fix it?

```shell
> greet "Alice" "Bo" ++ "b"
"Hello Alice! My name is Bo!b"
```

### Lists

You'll become very familiar with lists after working with functional programming!

```shell
> pets = ["dog","cat","pig"]
["dog","cat","pig"]
> numbers = [1,2,3]
[1, 2, 3]
> increment n = n + 1
<function>
> List.map increment numbers
[2,3,4]
```

Can you figure out what's going on in `List.map increment numbers`?

One thing to keep in mind is that all items in a list must be of the same type.
It's not JavaScript!

## Resources

- Docs: https://guide.elm-lang.org/
- You only showed us a hello world! What about something real?
  https://github.com/rtfeldman/elm-spa-example
