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

## Walkthrough: The Basics

Let's start up the REPL and type some values.

```shell
$ elm repl
> 2 + 2
4 : number
> "Zebra"
"Zebra" : String
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
<function> : String -> String
```

We can make it take multiple arguments.

```shell
> greet otherName myName = "Hello " ++ otherName ++ "!" ++ " My name is " ++ myName ++ "!"
<function> : String -> String -> String
```

All arguments must be primitive values, or else you need to put parenthesis around
the grouping. The output below appears messed up. Why is the output like this?
Can you fix it?

```shell
> greet "Alice" "Bo" ++ "b"
"Hello Alice! My name is Bo!b" : String
```

### Lists

You'll become very familiar with lists after working with functional
programming! The example [groceries.elm](groceries.elm) contains a few of them.

```shell
> pets = ["dog","cat","pig"]
["dog","cat","pig"] : List String
> numbers = [1,2,3]
[1,2,3] : List number
> increment n = n + 1
<function> : number -> number
> List.map increment numbers
[2,3,4] : List number
```

Can you figure out what's going on in `List.map increment numbers`?

One thing to keep in mind is that all items in a list must be of the same type.
It's not JavaScript!

### Tuples

When you want to return multiple items from a function, use tuples. The items
in a tuple can be of different types.

Try the following. It will produce an error. However, you will notice that the
error message is quite helpful.

```shell
> moreThanTwo n = if n > 2 then (True, n ++ " is more than two!") else (False, n ++" is not greater than two")
```

Try using the hints from the error message to fix the code. Then run the function
with some inputs to see the output.

### Records

Records are like JSON objects. They allow you to create a group of values that
can be accessed by name.

```shell
> banana = { color = "yellow", rating = 5 }
{ color = "yellow", rating = 5 }
    : { color : String, rating : number }
> banana.rating
5 : number
> .rating banana
5 : number

```

What if we need to update one of the values?

```shell
> { banana | rating = 10 }
{ color = "yellow", rating = 10 }
    : { color : String, rating : number }
```

Now try typing banana. Why is it back to the old value? This is one of the key
aspects of functional programming: no mutable state.

## Walkthrough: Making Web Applications with Elm



## Resources

- Docs: https://guide.elm-lang.org/
- You only showed us a hello world! What about something real?
  https://github.com/rtfeldman/elm-spa-example
