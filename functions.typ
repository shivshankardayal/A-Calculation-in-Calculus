#import "lib.typ": *
#set par(first-line-indent: 0em)
#let mycolor = rgb(0, 96, 176);

= Functions
One of the most fundamental concepts in mathematics is that of a function. Functions occupy a central
position in nearly every branch of modern mathematics and serve as the primary objects of study in many
areas. It should therefore come as no surprise that the concept of a function is quite general. Fortunately,
for our present purposes, we can restrict our attention to a particular class of functions. Although this
class is relatively limited, it offers enough variety to keep us occupied for a considerable time. We shall
not begin with a formal definition. Instead, we will introduce a preliminary description that will allow us
to explore functions and develop an intuitive understanding of how mathematicians use this concept. Later,
we shall examine the modern mathematical definition and discuss the advantages it offers. First we see some
examples:

Suppose that a vehicle is moving at a uniform speed of $40$ kmph. Let $t$ denote the time in hours and $s$
the distance in km. Thus, $s =$ distance covered in km in time $t$ hours $= 40t$. When $t = 0$ hour, $s = 0$
km; when $t = 1$ hour, $s = 40$ km; when $t = 2$ hours, $s = 80$ km and so on.

Thus it is clear that when $t$ changes, $s$ also changes, and for non-negative values of $t$ there will be a
corresponding value of $s$.

In this scenario we say that $s$ is a function of $t$. Generally it is written as $s = f(t) = 40t$. Here $t$
is the independent variable over the set of non-negative real numbers because $t$ can be any arbitrary
non-negative real number. $s$ is a dependent variable as its value depends on the value of $t$. Here $s$
also varies over the set of non-negative real numbers. The set over which $t$ varies is called the _domain_
of the function and the set over which $t$ varies is called the _range_ of the function. For this particular
example domain and range of the function are both sets of non-negative numbers.

As a second example we consider the rule to find the square root of a positive real number. Each real number
$x$ has two square roots.
