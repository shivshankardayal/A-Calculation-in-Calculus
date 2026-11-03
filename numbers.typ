#import "lib.typ": *
#set par(first-line-indent: 0em)
#let mycolor = rgb(0, 96, 176);

= Numbers
Welcome to this book on calculus! This is a quick recap of numbers in mathematics. The reason is that the
concepts of functions and limits in calculus depends entirely on the theory of numbers. So here we start.

Numbers are the most fundamental of topics in mathematics. We can safely say that the numbers are one of the
first things discovered during ancient times and we use Hindu-Arabic numerals to represent them. Over the
course of millennia they have undergone expansion and generalization but the essence of them have remained
rather fixed.

== Natural Numbers
Numbers $1, 2, 3, 4, dots$ used in day-to-day life for counting are called natural numbers or positive
integers. This set of numbers is denoted by $NN$. Sometimes they are denoted by $PP$ or $ZZ^+$.

== Integers
The numbers $dots, -3, -2, -1, 0, 1, 2, 3, dots$ are called integers. The set of integers is denoted by $II$
or $ZZ$. Clearly, $NN subset ZZ$.

== Zero
Zero is also an integer but it is neither a positive integer not a negative integer. In some number systems
like $1$'s complement in computers/binary number system do distinguish between positive and negative
zeroes. However, we treat zero as a non-negative and a non-positive integer in mathematics.

So we can say that $PP = NN = {1, 2, 3, dots} = $ Set of positive integers, ${-1, -2, -3, dots} =$ Set of
negative integers, ${0, 1, 2, 3, dots} =$ Set of non-negative integers and ${0, -1, -2, -3, dots} =$ Set of
non-positive integers.

== Rational Numbers
A number of the form $p/q$, where $p$ and $q$ are integers and $q != 0$ is called a _rational number_. The
symbol $QQ$ is used to represent the set of rational numbers. Thus, we can define the set $QQ$ like $QQ =
{p/q; p, q in ZZ "and" q != 0}$. Since every integer $p$ can be thought of as $p/1$ so every integer is also
a rational number. In a terse manner we can say that periodic decimal fractions are called rational numbers.

Clearly $NN subset ZZ subset QQ$. Examples of rational numbers are $2/3, 3/5, 7/13, -4/11, 6/1$ etc. $0$ is
an integer, therefore, also a rational number.

Rational numbers can be terminating(non-recurring) or non-terminating(recurring). For example, $2/3 =
0.dot(6)$ is a non-terminating rational number but $2/5 = 0.4$ is a terminating rational number. Without
loss of generality we can assume that $p$ and $q$ share no factors and $q > 0$.

*An Important Fact:*
Suppose we use a base $b$ number system, where $b$ is an integer. Let $p_1, p_2, dots, p_n$ be the prime
factors of $b$. A fraction $p/q$ will terminate only if prime factors of $q$ belong to the set ${p_1, p_2,
dots, p_n}$.

Thus, for any decimal fraction $p/q$ the prime factors of $q$ can only have powers of $2$ and $5$ if $p/q$
has to terminate or be non-recurring. If $q$ has any prime factor other than $2$ and $5$, then the fraction
will be non-terminating or recurring.

Let $d_i$ be any decimal digit between $1$ and $9$. Suppose the fraction has part $0.d_1$ as fractional part
then it can be written as $d_1/10$. You see that in any terminating fraction the denominator will be powers
of $10$ and thus it will contain factors of $2$ and $5$ only, which are prime factors of the base $10$.

*Standard form of a rational number:* In the standard form a rational number $p/q$ will be such that $p$ and
$q$ have no common factor other than $1$ and $q > 0$. For example, $5/10$ is a rational number but it is not
in the standard form. In standard form, the rational number would be $1/2$.

== Irrational Numbers
Consider a right angles isosceles triangle $A B C$ with sides $A B$ and $B C$ of length $1$ unit. From
Pythagorus theorem, we know that $A C^2 = A B^2 + B C^2 = 2 => A C = sqrt(2)$. Is this number a rational
number? If yes, then $A C = p/q, p, q in ZZ, q != 0$.

We assume that $p/q$ is in standard form that $1$ is the only factor between $p$ and $q$. Now $A C^2 =
p^2/q^2 = 2 => p^2 = 2q^2$

It is clear that $p^2$ is divisible by $2$, and hence, $p$ is also divisible by $2$. Let $p = 2m, m in ZZ$,
then $p^2 = 4m^2 = 2q^2 therefore q^2 = 2m^2$.

Thus, $q$ is also divisible by $2$. Thus, $p$ and $q$ have a common factor of $2$, which is a contradiction
to our assumption.

Hence, $A C$ cannot be represented by a rational number. We say that $A C$ represents an irrational number
$sqrt(2)$. There exists infinite irrational numbers like $sqrt(2), sqrt(3), sqrt(5), sqrt(6), sqrt(7),
sqrt(2) + sqrt(3), pi, dots$ etc.

Decimal form of irrational numbers are neither recurring nor terminating. When we use irrational numbers in
decimal form we use an approximation. For example, $sqrt(2) = 1.414, sqrt(3) = 1.732, pi = 22/7 = 3.14$ and
so on.

In a terse manner we can say that non-periodic decimal fractions are called irrational numbers.

Although the ancient Greeks recognized the need for irrational numbers through their study of geometry,
rigorous methods for constructing irrational numbers from rational numbers were not developed until the late
nineteenth century. During this period, three distinct approaches were proposed by Karl Weierstrass
(1815–1897), Georg Cantor (1845–1918), and Richard Dedekind (1831–1916). In 1889, the Italian mathematician
Giuseppe Peano (1858–1932) formulated five axioms for the positive integers that could serve as the
foundation for constructing the number system. A detailed treatment of this construction, beginning with the
Peano axioms and introducing irrational numbers using Dedekind's method, can be found in E. Landau's
Foundations of Analysis (New York: Chelsea Publishing Company, 1951).

== Real Numbers
Real numbers include those numbers which are either rational or irrational. However, imaginary or complex
numbers involving $sqrt(-1)$ are not real numbers. Real numbers are denoted by $RR$. In a terse manner we
can say that any decimal fraction, terminating or non-terminating is called a real number.

Clearly, $NN subset ZZ subset QQ subset RR$.

== Number Line
#figure(
    image("images/number-line.pdf"),
    caption: [Number Line]
) <f-1.1>

@f-1.1 shows a straight line with a point $O$ on it. We call this line number line. The point $O$ sits in
the middle of this line dividing it into two equal parts. The part right to the point $O$ is positive side
and represents positive numbers and the part left to $O$ is negative side and represents negative numbers.
As you can see in the figure $O$ represents $0$, $A$ represents $1$ and $A'$ represents $-1$. As there are
infinite points between two points there are infinite numbers on this number line between any two
numbers. This number line represents only real numbers and all real numbers can be represented by this
number line. When we say that there are infinite numbers of numbers between any two numbers we mean that
there are infinite rational and irrational numbers between any two numbers.

Any real number can be shown as a certain point on the number line which is called a _proper_
point. $+infinity$ and $-infinity$ are called _improper_ points.

== Notations Related to Intervals

=== Open Intervals
Consider two numbers $a$ and $b$ such that $a < b$. Then an open interval between $a$ and $b$ includes all
numbers between $a$ and $b$ except $a$ and $b$.  This is denoted by $]a, b[$, or $(a, b)$. Sometimes it is
written as $]a, b[ = (a, b) = {x in RR: a < x < b}$.

=== Closed Intervals
Consider two numbers $a$ and $b$ such that $a < b$. Then an open interval between $a$ and $b$ includes all
numbers between $a$ and $b$ including $a$ and $b$.  This is denoted by $[a, b]$. Sometimes it is written as
$[a, b] = {x in RR: a <= x <= b}$.

=== Open Closed Intervals
Consider two numbers $a$ and $b$ such that $a < b$. Then an open closed interval between $a$ and $b$
includes all numbers between $a$ and $b$ including $b$ but not $a$. We also call it half open half closed
interval. This is denoted by $]a, b]$ or $(a, b]$. Sometimes it is written as $(a, b] = {x in RR: a < x <=
b}$.

=== Closed Open Intervals
Consider two numbers $a$ and $b$ such that $a < b$. Then an open closed interval between $a$ and $b$
includes all numbers between $a$ and $b$ including $a$ but not $b$. We also call it half closed half open
interval. This is denoted by $[a, b[$ or $[a, b)$. Sometimes it is written as $[a, b) = {x in RR: a <= x <
b}$. If you look at intervals in programming then in general we are looking at this half closed half open
interval almost always.

The interval $(a - epsilon, a + epsilon)$ is called the $epsilon$-neighborhood of the number $a$. The set of
real numbers $x > M$ is called the $M$-neighborhood of the improper point $+infinity$. The set of
real numbers $x < M$ is called the $M$-neighborhood of the improper point $-infinity$.

== Concept of Infinity
As you have already seen on the two ends of the number line in @f-1.1 we have used the symbol $infinity$ and
$-infinity$. This symbol represents infinity. One on the right is positive infinity and one on the left is
negative infinity. All read numbers lie between these two numbers. It does not matter how big or small a
number is in the set $RR$ it will always lie between these two points i.e. $-infinity < x < infinity$, where
$x in RR$. Note that infinity is not a concrete number but a concept.

=== Properties of Infinity
We have certain properties associated with the concept of infinity which we write down below to establish
facts which will help us in further chapters:

#set enum(numbering: "i)")
#import "@preview/itemize:0.2.0" as el
#show: el.default-enum-list

+ $infinity plus.minus x = infinity forall x in RR$ and $-infinity plus.minus x = -infinity forall x in RR$
+ $infinity + infinity = infinity$
+ $infinity times infinity = infinity, (-infinity)times(-infinity) = infinity, infinity times (-infinity) =
  -infinity$
+ $infinity^infinity = infinity$
+ $x times infinity &= infinity, "if" x > 0$ and $x times infinity = -infinity, "if" x < 0$
+ $infinity - infinity$ (Indeterminate i.e. something which cannot be determined)
+ $x^infinity = infinity, x > 1$, $x^infinity = 0, 0 <= x < 1$ and $x^infinity = 1, x = 1$.

Based on the concepts of infinity we can define some commonly used infinite intervals.

+ $[a, infinity[$ or $[a, infinity) = {x in RR: a <= x < infinity}$
+ $]a, infinity[$ or $(a, infinity) = {x in RR: a < x < infinity}$
+ $]-infinity, a]$ or $(-infinity, a] = {x in RR: -infinity < x <= a}$
+ $]-infinity, a[$ or $(-infinity, a) = {x in RR: -infinity < x < a}$
+ $]-infinity, infinity[$ or $(-infinity, infinity) = {x in RR: -infinity < x < infinity}$

== Modulus of a Real Number
_Modulus_ or absolute value of a number $x$ is denote by $|x|$. It evaluate to $x$ if $x > 0$, $0$ if $x =
0$ and $-x$ if $x < 0$.

Given below are the properties of an absolute value or modulus:

+ $|x| <= a => -a <= x <= a$
+ $|x| >= a => x >= a$ or $x <= -a$
+ $|x plus.minus y| <= |x| + |y|$
+ $|x plus.minus y| >= |x| - |y|$
+ $|x y| = |x||y|$
+ $lr(|x/y|) = (|x|)/(|y|), (|y| != 0)$

== Basic Properties and Theorems of Numbers
Given below are basic properties and theorems which you know from your elementary mathematics.

*Property 1:* Associative law for addition i.e. $a + (b + c) = (a + b) + c$.

*Property 2:* Additive identity i.e. $a + 0 = 0 + a = a$.

*Property 3:* Additive inverse i.e. $a + (-a) = (-a) + a = 0$.

*Property 4:* Commutative law for addition i.e. $a + b = b + a$.

*Property 5:* Associative law for multiplication i.e. $a dot(b dot c) = (a dot b) dot c$.

*Property 6:* Multiplicative identity i.e. $a.1 = 1.a, 1 != 0$.

*Property 7:* Multiplicative inverse i.e. $a dot a^(-1) = a^(-1)dot a = 1; a != 0$.

*Property 8:* Commutative law for multiplication i.e. $a dot b = b dot a$.

*Property 9:* Distributive law i.e. $a dot(b + c) = a dot b + a dot c$.

*Property 10:* Trichotomy law. For every number $a$, one and only one of the following holds: $a = 0$ or $a$ is
the set of $RR^+$ or $-a$ is in the set of $RR^+$.

*Property 11:* (Closure under addition) If $a, b$ are in $RR^+$, then $a + b$ is in $RR^+$.

*Property 12:* (Closure under multiplication) If $a, b$ are in $RR^+$, then $a dot b$ is in $RR^+$.

*Property 13:* Existence of negatives i.e. For every number $x, x in RR$ there is a number $y, y in RR$ such
that $x + y = 0$.

*Property 14:* Existence of reciprocals i.e. For every number $x, x in RR$ there is a number $y, y in RR$ such
that $x dot y = 1$.

The property $1$ is quite obvious like other properties. We can quickly agree that $a + b + c$ denotes either side of
the equality in the property. However, when four numbers are involved the situation is not so simple. The
symbol $a + b + c + d$ can mean one of the following:

#math.equation(block: true, numbering: none)[
    $ ((a + b) + c) + d, (1) "or" \
    (a + (b + c)) + d, (2) "or" \
    a + ((b + c) + d), (3) "or" \
    a + (b + (c + d)), (4) "or" \
    (a + b) + (c + d). (5)
    $
]


From property $1$ it follows that $(1)$ and $(2)$ are equal. The equality of $(2)$ and $(3)$ is also follows
from it(treat $(b + c)$ as $b$ and $d$ as $c$). Remaining equalities are also quite straightforward to
prove. The problem of proving this worsens when the number of digits go on increasing. Therefore, we will
prove this in one of the problem as a general technique. For now, we will disregard the parentheses and
assume that property $1$ hold for any number of numbers in $RR$.

Property $2$ shows a unique property of zero. Zero in this property cannot be replaced by any other number. The
proof is quite simple as shown. If $a + x = a$, then $-a + a + x= -a + a = 0 => (-a + a) + x = 0 => x =
0$. From this we have shown that we can treat subtraction as an operation derived from addition. We just
treat subtraction as addition with negative numbers. This also proves property $3$. Property $4$ can be proven
with the help of $1$ by adding $-b$ to the statement of $4$. Property $4$ basically says that addition does not
depend on the order of numbers added. However, all operations are not independent of order. For example, $a
- b = b - a$ is true for very specific case of $a = b$.

Similarly we can prove the other properties, however, $7$ is a specific case. The reason is that $0^(-1)$ gives
us not a number i.e. it is meaningless, which implies that $a/0$ is also meaningless. Division by $0$ is
undefined. Let us say that $1/0 = infinity$, then $2/0$ is also infinity. So you see the problem. You cannot
distinguish between the two infinities. As we will see in the chapter of limits $0dot infinity$ is an
indeterminate case.

Furthermore, if $a dot b = a dot c$ does not mean that $b = c$ unless $a != 0$. Because if $a = 0$ it does
not matter what are the values of $b$ and $c$ the product will be equal. Like for property $1$ we can multiply
with the multiplicative inverse to prove this when $a != 0$. Also, if $a dot b = 0$ using the same technique
we can prove that either $a = 0$ or $b = 0$. Note that we have not specifically said that both are zero
because in mathematics "or" means "one or the other or both". If you study polynomials then you would
frequently encounter something like if $(x - alpha_1)(x - alpha_2)(x - alpha_3) dots (x - alpha_n) = 0 => x
= alpha_1 "or" x = alpha_2 "or" x = alpha_3 dots x = alpha_n$. Similarly we can use multiplicative inverse
to prove property $8$ and property $9$.

Property $9$ says that $a dot (b + c) = a dot b + a dot c$(Notice that the equation $(b + c) dot a = b dot a +
c dot a$ is also true by property $8$). As an example of usage of property $9$ when $a - b = b - a$. If $a -
b = b - a => (a - b)  + b = (b - a) + b => a = b$. With property $9$ it is easy to prove that $a dot 0 = 0$,
which is not possible from property $1- 8$. $a dot 0 + a dot 0 = a dot (0 + 0) = a dot 0$. Another
usefulness of property $9$ is the fact that product of two negative numbers is positive. We start with $(-a)
dot b = -(a dot b)$. To prove this we observe that $(-a)dot b + a dot b = [(-a) + a]dot b = 0.b =
0$. Further $(-a)dot (-b) + [-(a dot b)] = (-a)dot(-b) + (-a)dot b = (-a)dot[(-b) + b] = (-a)dot 0 =
0$. Adding $(a.b)$ to both sides, we have $(-a)dot(-b) = a dot b$.

You would encounter quadratic equations of the form $a x^2 + b x + c$ quite often in mathematics. Suppose
$alpha$ and $beta$ are the roots of this equation then $alpha + beta = -b/a$ and $alpha beta = c/a$ so that
$(x - alpha)(x - beta) = x^2 - b/a x + c/a = x^2 -(alpha + beta)x + alpha beta = 0$. We can prove that $x^2
- (alpha + beta)x + alpha beta = 0$ with triple usage of property $9$.

$(x - alpha)dot(x - beta) = x dot(x - beta) + (-alpha)dot(x - beta) = x dot x + x dot(-beta) + (-alpha)dot x
+ (-alpha)dot(-beta) = x^2 + x[(-alpha) + (-beta)] + alpha dot beta = x^2 - (alpha + beta)x + alpha beta$.

Property $9$ is used whenever you multiply numbers with both numbers not of one digit. Property $10-12$ is
best augmented with the following definitions: $a > b$ if $a - b$ is in $PP$ or $RR^+$, $a < b$ if $b > a$,
$a >= b$ if $a > b$ or $a = b$ and $a <= b$ if $a < b$ or $a = b$. Most of the facts about inequalities come
from property $10-12$.

Proof of remaining properties are left to the reader.

Now we will study some theorems of moduli of numbers.

#theorem(name: "")[
    For all numbers $a$ and $b$, we have
    $ |x + y| <= |x| + |y| $
]

#proof[
    We consider all $4$ cases which the combination of $|x|$ and $|y|$ give us.
    #set math.equation(numbering: "(1)")
    #counter(math.equation).update(0)
        $ x >= 0, y >= 0 $ <f1>
        $ x >= 0, y <= 0 $ <f2>
        $ x <= 0, y >= 0 $ <f3>
        $ x <= 0, y <= 0 $ <f4>
    @f1 and @f4 are naturally true. For equation @f2 where $x >= 0$ and $y <= 0$ if we must prove that $|x + y|
    <= x - y$. If $x + y >= 0$ we need to prove $x + y <= x - y$ or $y <= -y$, which is true. If $x - y <=0$
    then we must prove that $-x - y <= x - y$ or $-x <= x$, which is true from the given condition. @f3 need
    not be proven because you can exchange $x$ and $y$ in @f2.
]

Though most of the times the only approach to handle modulus of numbers is to handle separate cases,
sometimes simpler method can be used. For example given below is a shorter solution of the above theorem.

#aliter[
    We observe that $|x| = sqrt(x^2)$. This leads to $(|x + y|)^2 = (x + y)^2 = x^2 + 2x y + y^2 <= |x|^2 +
    2|x|dot|y| + |y|^2 = (|x|  + |y|)^2$.

    Thus, we arrive at $|x + y| <= |x|  + |y|$ because $x^2 < y^2 => x < y$, provided that both $x$ and $y$
    are nonnegative.
]

#theorem(name: "")[
    For all numbers $a$ and $b$, we have
    $ |x - y| >= |x| + |y| $
]

#proof[
    Let $x - y = z$ then $x = y + z$ and from the previous theorem $|x| = |y + z| <= |y| + |z| = |y|  + |x -
    y| => |x| - |y| <= |x - y|$.
]

$|x y| = |x||y|$ and $lr(|x/y|) = (|x|)/(|y|), (|y| != 0)$ is proven directly from the definition of modulus
of a number.

#set enum(
    full: true,
    numbering: (..nums-arguments) => context {
        let nums = nums-arguments.pos()
        let thread-counter = counter("ex1")
        let print-cyan = cmyk(100%, 0%, 0%, 0%)
        if nums.len() == 1 {
            thread-counter.step()
            let thread-count = thread-counter.get().first() + 1
            text(fill: mycolor, numbering("1.a.i.", thread-count))
            //numbering("1.a.i.", thread-count)
        } else {
            text(fill: mycolor, numbering("1.a.i.", nums.last()))
            //numbering("a.i.", nums.last())
        }
    },
    spacing: 1em,
)

== Problems
//1
+ Prove that the number $1010010001 dots 1underbrace(00 dots 00, n)1 dots$ is irrational.
//2
+ Prove that any number, with zeros standing in all decimal places numbered $10^n$ and only in these places,
  is irrational.
//3
+ Prove that the sum of, or the difference between, a rational number $alpha$ and an irrational number
  $beta$ is an irrational number.
//4
+ Prove that the product $alpha beta$ and the quotient $alpha/beta$ of a rational number $alpha != 0$ and
  an irrational number beta is an irrational number.
//5
+ Find all rational vallues of $x$ at which $y = sqrt(x^2 + x + 3)$ is a rational number.
//6
+ Prove that the number $sqrt(2) + sqrt(3)$ is irrational.
//7
+ Prove that for every positive rational number $r$ satisfying the condition $r^2 < 2$ one can always find a
  larger rational number $r + h(h > 0)$ for which $(r + h)^2 < 2$.
//8
+ Prove that for every positive rational number $r$ satisfying the condition $r^2 > 2$ one can always find a
  larger rational number $r - h(h > 0)$ for which $(r - h)^2 > 2$.
//9
+ Solve the inequality $|2x - 3| < 1$.
//10
+ Solve the inequality $(x - 2)^2 >= 4$.
//11
+ Solve the inequality $x^2 + 2x - 8 <= 0$.
//12
+ Solve the inequality $|x^2 - 7x + 12| > x^2 - 7x + 12$.
//13
+ Find out whether $|x| = x + 5$ has any solution.
//14
+ Find out whether $|x| = x - 5$ has any solution.
//15
+ Determine the values of $x$ satisfying the equality $lr(|(x - 1)/(x  + 1)|) = (x - 1)/(x  + 1)$.
//16
+ Determine the values of $x$ satisfying the equality $lr(|x^2 - 5x + 6|) = -(x^2 - 5x + 6)$.
//17
+ Determine the values of $x$ satisfying the equality $lr(|(x^2 + 4x + 9) + (2x - 3)|) = lr(|x^2 + 4x + 9|)
  + |2x -  3|$.
//18
+ Determine the values of $x$ satisfying the equality $lr(|(x^4 - 4) - (x^2 + 2)|) = lr(|x^4 - 4| - |x^2 +
  2|)$.
//19
+ Solve the inequality $|3x - 5| - |2x + 3| > 0$.
//20
+ Solve the inequality $lr(|x^2 - 5x|) > lr(|x^2|) - |5x|$.
//21
+ Find the roots of the equation $|sin x| = sin x + 1$.
//22
+ Find the roots of the equation $x^2 - 2|x| - 3 = 0$.
//23
+ Prove that if $a x = a$ for some number $a != 0$ then $x = 1$.
//24
+ Prove that $x^2 - y^2 = (x  + y)(x - y)$.
//25
+ Prove that if $x^2 = y^2$ then $x = y$ or $x = -y$.
//26
+ Prove that $x^3 - y^3 = (x - y)(x^2 + x y + y^2)$.
//27
+ Prove that $x^n - y^n = (x - y)(x^(n - 1) + x^(n - 2)y + dots.c + x y^(n - 2) + y^(n - 1))$.
//28
+ What is wrong with the following proof? Let $x = y$. Then

  #math.equation(block: true, numbering: none)[
      $x^2 & = x y \
      x^2- y^2 & = x y - x^2 \
      (x + y)(x - y) & = y(x - y) \
      x + y & = y \
      2y &= y \
      2 & = 1.$
  ]
//29
+ Prove that $a/b = (a c)/(b c)$ if $b dot c != 0$.
//30
+ Prove that $a/b + c/d = (a d + b c)/(b d)$ if $b, d != 0$.
//31
+ Prove that $(a b)^(-1) = a^(-1)b^(-1)$, if $a, b != 0$.
//32
+ Prove that $a/b dot c/d = (a c)/(b d)$ if $b, d != 0$.
//33
+ Prove that $(a/b)/(c/d) = (a d)/(b c)$ if $b, c, d != 0$.
//34
+ If $b, d != 0$, then $a/b = c/d$ if and only if $a d = b c$. Also determine when $a/b = b/a$.
//35
+ Find all numbers $x$ for which $4 - x < 3 - 2x$.
//36
+ Find all numbers $x$ for which $5 - x^2 < 8$.
//37
+ Find all numbers $x$ for which $5 - x^2 < -2$.
//38
+ Find all numbers $x$ for which $(x - 1)(x - 3) > 0$.
//39
+ Find all numbers $x$ for which $x^2 - 2x + 2 > 0$.
//40
+ Find all numbers $x$ for which $x^2 + x + 1 > 2$.
//41
+ Find all numbers $x$ for which $x^2 - x + 10 > 16$.
//42
+ Find all numbers $x$ for which $x^2 + x + 1 > 0$.
//43
+ Find all numbers $x$ for which $(x - pi)(x + 5)(x - 3) > 0$.
//44
+ Find all numbers $x$ for which $(x - root(3, 2))(x - sqrt(2)) > 0$.
//45
+ Find all numbers $x$ for which $2^x < 8$.
//46
+ Find all numbers $x$ for which $x + 3^x < 4$.
//47
+ Find all numbers $x$ for which $1/x + 1/(x - 1) > 0$.
//48
+ Find all numbers $x$ for which $(x - 1)/(x + 1) > 0$.
//49
+ Prove that if $a < b$ and $c < d$, then $a + c < b + d$.
//50
+ Prove that if $a < b$, then $-b < -a$.
//51
+ Prove that if $a < b$ and $c > d$, then $a - c < b - d$.
//52
+ Prove that if $a < b$ and $c > 0$, then $a c < b c$.
//53
+ Prove that if $a < b$ and $c < 0$, then $a c > b c$.
//54
+ Prove that if $a > 1$, then $a^2 > a$.
//55
+ Prove that if $0 < a < 1$, then $a^2 < a$.
//56
+ Prove that if $0 <= a < b$ and $0 <= c < d$, then $a c < b d$.
//57
+ Prove that if $0 <= a < b$, then $a^2 < b^2$.
//58
+ Prove that if $a, b >= 0$ and $a^2 < b^2$, then $a < b$.
//59
+ Prove that if $0 <= x < y$, then $x^n < y^n, n = 1, 2, 3, dots$.
//60
+ Prove that if $x < y$ and $n$ is odd, then $x^n < y^n$.
//61
+ Prove that if $x^n = y^n$ and $n$ is odd, then $x = y$.
//62
+ Prove that if $x^n = y^n$ and $n$ is even, then $x = y$ or $x = -y$.
//63
+ Prove that if $0 < a < b$, then $a < sqrt(a b) < (a + b)/2 < b$.
//64
+ Express $|sqrt(2) + sqrt(3) - sqrt(5) + sqrt(7)|$ with at least one less pair of absolute value signs.
//65
+ Express $|(|a + b| - |a| - |b|)|$ with at least one less pair of absolute value signs.
//66
+ Express $|(|a + b| + |c| - |a + b + c|)|$ with at least one less pair of absolute value signs.
//67
+ Express $|x^2 - 2x y + y^2|$ with at least one less pair of absolute value signs.
//68
+ Express $|(|sqrt(2) + sqrt(3)| - |sqrt(5) - sqrt(7)|)|$ with at least one less pair of absolute value
  signs.
//69
+ Express $|a + b| - |b|$ without absolute value signs.
//70
+ Express $|(|x| - 1)|$ without absolute value signs.
//71
+ Express $|x| - lr(|x^2|)$ without absolute value signs.
//72
+ Express $a - |(a - |a|)|$ without absolute value signs.
//73
+ Find all numbers $x$ for which $|x - 3| = 8$.
//74
+ Find all numbers $x$ for which $|x - 3| < 8$.
//75
+ Find all numbers $x$ for which $|x + 4| < 2$.
//76
+ Find all numbers $x$ for which $|x - 1| + |x - 2| > 1$.
//77
+ Find all numbers $x$ for which $|x - 1| + |x + 1| < 2$.
//78
+ Find all numbers $x$ for which $|x - 1| + |x + 1| < 1$.
//79
+ Find all numbers $x$ for which $|x - 1| dot |x + 1| = 0$.
//80
+ Find all numbers $x$ for which $|x - 1| dot |x + 2| = 3$.
//81
+ Prove that $|x y| = |x|dot|y|$.
