# Elixir Ochoku Guide

As I build this project I'm writing this guide at the same time.  You'll see in the commit log that I'll make changes and then document them here.

Some of the things I'll be doing as general practice will be:

- README Driven Development
- Test Driven Development

# Before we begin

While I'm an experienced programmer with a few of different languages
and tool stacks under my belt, I'm basically fresh to Elixir and this
project is the first Elixir code I've ever written. (I'm also
completely new to programming Erlang and/or the Erlang VM.)

I have been aware of Elixir and Erlang for a long time and have been
keeping an eye on it, many concepts are now familiar to me.  I also
have a basic interest and attraction to Elixir, it seems to tick many
of the boxes in my hypothetical ideal environment.  I have a bunch of
years working with Ruby and RoR, I tend towards and enjoy functional
programming languages and styles, incidentally I've used a few flavors
of Lisp over many years.

That said, I'm interested to see if I have any pain points as I embark
on this piece of work.

### Getting my project started.

I began by reading the Elixir getting started
guide, and getting my project folder structure set up according to the
_Elixir way_.


Anyway first things first, I made myself a project folder, initialised
git and created a github repo and setup my local remotes to sync with
it.  I'm going to assume you know how to do all this, so I won't go
into those details.

As a side note, I should mention that I use
[`hub`](https://github.com/github/hub) to do cli integration with
Github. It's neat and helpful and I think you would probably enjoy
using too (if you don't already!)  I'm assuming (of course!) that you
like working in a CLI as much as I do. (i.e. you prefer not to use
GUIs.)

To get up and running I must install the Elixir.  I'm working on OS X
so using [homebrew](http://brew.sh) is the obvious way to go, just do
this:

```
brew update
brew install elixir
```

If that all goes well, we'll have a clean starting point. Write up the
project goals in a `README.md` in the form of a few notes, which you
can flesh out later. After that we can make our initial commit.

Now let's use `mix` to init the Elixir project proper.

```
mix new my_project --module MyProject
```

This tells `mix` to build me a new project in the current folder.

Note there's some naming rules to be aware of with `mix`, only use
numbers, letters and underscores. Spaces, hyphens/dashes or any other symbols are **not allowed**.

After `mix new` has run we'll have a folder structure like this...

```
|-- README.md
|-- config
|   `-- config.exs
|-- lib
|   `-- my_project.ex
|-- mix.exs
`-- test
    |-- my_project_test.exs
    `-- test_helper.exs
```

Perhaps Ruby on Rails developers will feel a tinge of dejavu, at least
in spirit.

> I'm using a README driven development style so I already had a
`README.md`.  Even so, I let `mix` create it's own readme just so
I could see what it would produce.

> I think it may be a useful starting point for some, especially if
you intend to share your Elixir project as a library via
[Hex][hex].

> It didn't suit me though, so I checked mine back out of the initial
git commit.

- - -

Now that we have the project structure available. I'm going to take a
diversion now and look at the guide.  I suggest checking out the
example mix-otp project in the elixir lang getting started guide.

http://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html

### Interactive Elixr - iex

For me REPLs are a basic programming tool, as essential as a debugger,
or a testing framework.  They allow me to try out simple expressions
and prototype small ideas quickly. ([what's a REPL?][what-is-a-repl])

They're also great for sanity checking syntax and symbol naming of a
language, often faster than looking things up in docs or online.
Providing the error messaging is useful of course.

Thankfully Elixir has a REPL called `iex`, all the basic features are
there.

In particular the help / documentation system in Elixir / IEx is
impressive, for example look at the help for the `if` macro.

```
h if
```

We get this:

```
                        defmacro if(condition, clauses)

Provides an if/2 macro.

This macro expects the first argument to be a condition and the second argument
to be a keyword list.

One-liner examples

┃ if(foo, do: bar)

In the example above, bar will be returned if foo evaluates to true (i.e., it
is neither false nor nil). Otherwise, nil will be returned.

An else option can be given to specify the opposite:

┃ if(foo, do: bar, else: baz)

Blocks examples

It's also possible to pass a block to the if/2 macro. The first example above
would be translated to:

┃ if foo do
┃   bar
┃ end

Note that do/end become delimiters. The second example would translate to:

┃ if foo do
┃   bar
┃ else
┃   baz
┃ end

In order to compare more than two clauses, the cond/1 macro has to be used.

```

This is exceptionally good REPL based documentation. Considering it's
even there if you're offline, air-travel can be super productive for
the novice Elixir programmer!

As a rule, in Elixir all functions and modules should have
documentation.  Documentation strings are also formatted with Markdown
and render in the REPL with color highlighting.  It's really a
pleasant to work with an environment like this.

[what-is-a-repl]: https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop
[hex]: https://hex.pm
