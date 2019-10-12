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
and no hidden output, and they do not change variables that exist outside the
function. For example, a function might takes two inputs, a and b, and return
their sum. As long as you provide the same a and b as input, it will always
return the same sum regardless of what's going on outside the function.

Read this [blog post](http://blog.jenkster.com/2015/12/what-is-functional-programming.html)
to learn more. It's well written and easy to understand.

## Basics

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

You'll become familiar with lists after working with functional programming!
The example [groceries.elm](groceries.elm) contains a few of them.

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
It's not like JavaScript, where you can mix together different types in the same
array.

### Tuples

When you want to return multiple items from a function, use tuples. The items
in a tuple can be of different types.

Try the following. It will produce an error. However, you will notice that the
error message is quite helpful.

```shell
> moreThanTwo n = if n > 2 then (True, n ++ " is more than two!") else (False, n ++" is not greater than two")
```

Use the hints from the error message to fix the code. Then run the function with
some inputs to see the output.

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

Now type `banana`. Why is it back to the old value? This is one of the key
aspects of functional programming: no mutable state. We returned a new record
without changing the old one.

## Making Web Applications

Elm is not a general purpose programming language. You will find most useful
for creating user interfaces in the browser. That being said, there are some
concepts that are present in all Elm programs. These are the **model**, the
**update**, and the **view**.

### Summary

- **Model** contains the state of the application.
- **Update** defines the messages that we receieve from the UI along with the
  functions that change the model based on the message.
- **View** is essentially an HTML template.
- We create the HTML with Elm functions, which allows us to do things like move
  duplicate code into a separate function. No additional templating language is
  necessary.
- Because the view is declarative and abstracted away from normal HTML, Elm can
  optimize for fast rendering.

### Examples

The examples here will for the most part follow the official guide. The code is
included in this repo in case the online Elm editor is unavailable, so feel
free to use the online editor instead running these on your own computer.

#### Counter

After we talk about each example, try adding additional functionality. In
programming, you learn more by doing rather than looking at examples.

- Online editor: https://elm-lang.org/examples/buttons
- Code: [examples/counter.elm](examples/counter.elm)
- **Your turn**: Add a button that resets the counter to zero.

#### Reversing a string as you type

In this example, you will notice some concepts we talked about earlier, such as
records.

- Online editor: https://elm-lang.org/examples/text-fields
- Code: [examples/reverse.elm](examples/reverse.elm)
- **Your turn**: Next to the input, display the length of the string.

#### Form that checks for matching passwords

The view on this one is a little more complex! Can you explain to someone
sitting next to you exactly what is going on?

- Online editor: https://elm-lang.org/examples/forms
- Code: [examples/form.elm](examples/form.elm)
- **Your turn**: Add a button that "submits" the form, adding the name to a list
  of names below the form.
- **Bonus points**: Before the password is stored in the model, hash it using the
  [elm-sha256](https://package.elm-lang.org/packages/billstclair/elm-sha256/latest/)
  library. This won't work in the online editor, so you'll need to run it on your
  own computer.

## Resources

- Docs: https://guide.elm-lang.org/
- You only showed us a hello world! What about something real?
  https://github.com/rtfeldman/elm-spa-example
