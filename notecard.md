# Array Comprehensions in JavaScript (Everyone)

- Note that it will be a pretty useful feature that will add
a lot of value and keep code relatively clean

# Background (Jack)

- For some background, Javascript is formally defined in the ECMAScript,
and they're working on it for the upcoming version known as Harmony.
- Other ECMAScript languages are ActionScript and Jscript.

# What are Array Comprehensions? (Jack)

- It's a concise syntax for constructing collections and combines map,
filter, and Cartesian product into one operation and it makes code
more expressive and declarative.

# History (Ken)

# Example problem (Ken)

- Note that this relatively simple problem requires usage
of all of the features achieved through array comprehensions

# Set-builder notation (Ken)

- Note that there's a mathmetical basis to array comprehensions.

- This is how you might express odd integers < 10000 in math,
array comprehensions do a similar expression with a similar syntax.

# In different languages (Ken)

- Here are some examples of how array comp syntax has evolved
over time, and how it came to be in Python.

- As you'll see soon, Python's syntax is what really motivated
ES6.

# JavaScript, before array comps (Ken)

- Note that it's iterative, destructive, and verbose.

- Three things against the concepts we've been taught in
this class, motivating a more functional approach.

# JavaScript, with array comps (Ken)

- Note the lack of itteration, and the return of a 
new array without modifying the operative one.

# Initial abstract syntax (James)

- Note that this is relatively simple and not very flexible 

# Current abstract syntax (James)

- As you can see the current abstract syntax has grown,
and while the abstract syntax is more complicated it
provides better utility and more flexibilty.

# Implementation progress (James)

# Mozilla (James)

- Firefox has supported array comps since Firefox 2, actually
before ES6 started adopting them and consequently had a
slightly different syntax.

- However they've now implemented array comps as ES6 spec'd out

# V8 (James)

- Be mindful of time on this slide.

# Other implementations (James)

- Skip talking about blog articles

# Community support (Jack)

- Many people on online forums requested for array comprehension in Javascript.
- Segway faster into the V8 issue, and we can bleed over
a little bit into the next slide as community concerns
are not as important
- Skip the bullet about blog articles
- Back in 2010, V8 asked for array comprehensions but still didn't get them.

# Community concerns (Jack)

- Concerns about readibility and compatability.
- Comps aren't familiar with JS programmers.
- As said earlier, still not fully supported.

# Predictions for the future (Jack)

- Not quite ready for production use as it's not supported in all browsers
Skip talking about the underscore.js 
- However, it should be ready to be implemented in JS in 2-3 years.

# Conclusion (Jack)

- Array comprehensions makes code easier to understand.
- Combines three functions into one expression.
- Will be coming soon.
