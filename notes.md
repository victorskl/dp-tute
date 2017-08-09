
## Section 00


## Section 01 - Intro

- equational reasoning
    - if two expressions have equal values, then one can be replaced by the other.
- list
    - empty list `[]`
    - non-empty list `x:xs` head:tail
    - `["a", "b"]` syntactic sugar of `"a": "b": []`
- function
    - patterns (pattern matching)
        - exhaustive
        - exclusive
- syntax
    - `function_name argument1 argument2`
    - use parentheses grouping for function as argument `f fa1 (g ga1) fa3`
    - comment is two minus signs `-- this is comment`
    - functions and variables must start with lower case letter
    - offside rule
        - so little ceremony - identation similar to Python
- recursion
    - base case and recursive case e.g. [mylen.hs](lecture/section01/mylen.hs)
    - lots of recursion - higher order function
- expression evaluation
    - the runtime system execute a loop, each iteration consists of these steps
        1. look for function call in current expression
        2. searches the list of equations defining the function from top to down, looking for matching equation
        3. sets the values of the variables in the matching pattern to the corresponding parts of the actual arguments
        4. replace left hand side of the equation with the right hand side
    - the loop stops when the current expression contains no function  calls, not even calls to such builtin functions as addition
- order of evaluation
    - the first step of each iteration of the loop "look for function call in current expression" lead to more than one function call. Which one should we select?
    - it does not matter!! Church-Rosser theorem the ___lambda calculus___ 
    - the rewriting system known as the ___lambda calculus___ regardless of the order in which the original term’s subterms are rewritten, the final result is always the same.
    - however, there is an ___Efficiency___ on which one to get evaluated e.g. [all_pos.hs](lecture/section01/all_pos.hs)
    - _Imperative vs Declarative_: In the presence of side effects, a program’s behavior depends on history; that is, the order of evaluation matters.
- referential transparency
    - absence of side effects allows ___pure___ functional languages to achieve referential transparency
    - which means that an expression can be replaced with its value
    - expression - no side effect and pure = always returns the same results on the same input
- single assignment
    - consequence of the absence of side effects
    - variables are _single assignment_ 
    - there are no assignment statements
    - You can define a variable’s value, but you ___cannot redefine___ it. 
    - Once a variable has a value, it has that value until the end of its lifetime.
- giving variable value - two ways
    1. Using `let pi = 3.14159 in ...` This defines `pi` to be the given value in the expression represented by the dots. It does not define pi anywhere else.
    2. The implicit way is to put the variable in a pattern on the left hand side of an equation: `len (x:xs) = 1 + len xs`. If `len` is called with a nonempty list, Haskell will bind `x` to its head and `xs` to its tail.


## Section 02 - Builtin Types

- Type system
    - strong, safe and static
    - _strong_ means no loopholes; one cannot tell Haskell to e.g. consider an integer to be a pointer as one can tell in C with `(char *) 42`
    - _safe_ means that a running program is guaranteed never to crash due to a type error
    - _static_ part means that types are checked when the program is compiled, not when the program is run
- Basic types
    - boolean `Bool` - has two values `True` and `False`
    - native integer `Int` - 32 or 64 depends of platform
    - integer of unbound size `Integer`
    - usual floating point type `Double` - `Float` is available but usage is discouraged
    - character `Char`
- List types
    - list is not a type; it is a ___type constructor___
    - Given any type `t`, it constructs a type for lists whose elements are all of type `t`. This type is written as `[t]`, and it is pronounced as ___list of t___. You can have lists of any type. For example,
        - `[Bool]` is the type of lists of booleans,
        - `[Int]` is the type of lists of native integers,
        - `[[Int]]` is the type of lists of lists of native integers.
- String
    - Haskell considers strings to be lists of characters, whose type is `[Char]`
    - `String` is a synonym for `[Char]`
- Compiler and Interpreter
    - `ghc` and `ghci` respectively
    - `Prelude>` is Haskell's standard library
    - `ghci` uses its name as the prompt to remind users that they can call its functions.
        ```
        robohawk:lecture victorskl$ ghc --version
        The Glorious Glasgow Haskell Compilation System, version 8.2.1
        robohawk:lecture victorskl$ ghci
        GHCi, version 8.2.1: http://www.haskell.org/ghc/  :? for help
        Prelude> let x = 2
        Prelude> let y = 4
        Prelude> x + (3 * 4)
        14
        Prelude> 
        ```
- Types and `ghci`
    - You can ask `ghci` to tell you the type of an expression by prefacing that expression with `:t`.
        ```
        Prelude> :t "abc"
        "abc" :: [Char]
        ```
    - The command `:set +t` tells `ghci` to print the type as well as the value of every expression it evaluates.
        ```
        Prelude> :set +t
        Prelude> "abc"
        "abc"
        it :: [Char]
        ```
    - The notation `x::y` says that expression `x` is of type `y`. In this case, it says `abc` is of type `[Char]`. `it` is `ghci`'s name for the value of the expression just evaluated.
    - You can also ask `ghci` about the types of functions. e.g. [is_empty.hs](lecture/section02/is_empty.hs)
    - A function type lists the types of all the arguments and the result, all separated by arrows. `isEmpty :: [a] -> Bool`
- Function types declarations
    - Programmers should declare the type of each function and syntax for this is similar to the notation printed by `ghci` such that the function name, a double colon, and the type. e.g. [emptiness.hs](lecture/section02/emptiness.hs)
    - The Haskell implementation will infer the types of functions if not declared.
    - Haskell also infers the types of all the local variables.
    - With type declarations, Haskell will ___report an error___ and ___refuse to compile the file___ if the declared type of a function is incompatible with its definition.
    - Without declarations, Haskell will ___report an error___ if the types in any call to any function are incompatible with its definition.
    - It's also an error if a call to the function is incompatible with its declared type.
    - Haskell will ___never allow code to be run with a type error___.
    - Type declarations improve Haskell's error messages, and make function definitions much easier to understand.
- Number types
    - has several numeric types - including `Int Integer Float Double`
    - A plain integer constant belongs to all of them.
    - So what does Haskell say when asked what the type of e.g. 3 is?
        ```
        Prelude> :t 3
        3 :: Num p => p
        Prelude> :t [1, 2]
        [1, 2] :: Num a => [a]
        ```
    - In these messages, `a` and `p` are ___type variables___; they are variables that stand for types, not values. 
    - The notation `(Num p)` means ___the type `p` is a member of type class `Num`___. `Num` is the class of numeric types, including the four types above.
    - The notation `3 :: (Num p) => p` means that ___if `p` is a numeric type, then 3 is a value of that type___.
    - The usual arithmetic operations, such as addition, work for any numeric type.
        ```
        Prelude> :t (+)
        (+) :: Num a => a -> a -> a
        ```
    - The notation `a -> a -> a` denotes a function that takes two arguments and returns `a` result, all of which have to be of the same type (since they are denoted by the same type variable, `a`), which in this case must be a member of the `Num` type class.
    - Number types flexibility is nice, but it does result in confusing error messages
        ```
        Prelude> [1, True]
        
        <interactive>:5:2: error:
            • No instance for (Num Bool) arising from the literal ‘1’
            • In the expression: 1
              In the expression: [1, True]
              In an equation for ‘it’: it = [1, True]
        ```
- If-the-else, Guards and structured definition
    - If-then-else in Haskell differs from if-then-elses in imperative languages in that
        - the else arm is not optional, and
        - the then and else arms are expressions, not statements.
    - Study e.g. [if_guard.hs](lecture/section02/if_guard.hs)
- Parametric polymorphic e.g. [poly.hs](lecture/section02/poly.hs)
    - A version of the code of `len` complete with type declaration
        ```
        len :: [t] -> Int
        len[] = 0
        len (_:xs) = 1 + len xs
        ```
    - This function, like many others in Haskell, is polymorphic. 
    - It means that `len` can process lists of type `t` regardless of what type `t` is, i.e. regardless of what the form of the elements is.
    - The reason why `len` works regardless of the type of the list elements is that it does not do anything with the list elements.
    - This version of `len` shows this in the second pattern: the underscore is a placeholder for a value you want to ignore.

## Section 03 - Defining Types

- Enumerated type
- Discriminated union type
    - vs Un-discriminated union

## Section 04 - Using Types

- representation expression: C vs Java vs Haskell
    - errors
    - memory
    - maintenance
- switching on alternatives
    - missing alternatives `-fwarn-incomplete-patterns`
    - the consequences of missing alternatives