#import "lib.typ": *
#set par(first-line-indent: 0em)
#let mycolor = rgb(0, 96, 176);

= Answers of Numbers

#set enum(
    full: true,
    numbering: (..nums-arguments) => context {
        let nums = nums-arguments.pos()
        let thread-counter = counter("an1")
        if nums.len() == 1 {
            thread-counter.step()
            let thread-count = thread-counter.get().first() + 1
            text(fill: mycolor, numbering("1.a.i.", thread-count))
            //numbering("1.a.", thread-count)
        } else {
            //numbering("1.a.", nums.last())
            text(fill: mycolor, numbering("1.a.i.", nums.last()))
        }
    },
    spacing: 1em,
)

//1
+ We observe that there are $n$ zeros between the $n$th and $(n + 1)$th unities which cannot occur in a
  periodic number. Thus, the given number is an irrational number.
//2
+ Let $x = 0.a_1 a_2 a_3 dots$ be a decimal number whose nonzero digits occur only at positions $10^n$, for
  $n = 1, 2, 3, dots$.

  Suppose, for a contradiction, that $x$ is rational. Then its decimal expansion must eventually repeat
  periodically.

  Thus, there exist positive integers $N$ and $k$ such that for every $m >= N$, the digit at position $m$
  equals the digit at position $m+k$.

  Choose $n$ sufficiently large so that $10^n >= N$ and $k < 9 dot 10^n$.

  Since the digit at position $10^n$ is nonzero, periodicity implies that the digit at position $10^n + k$
  is also nonzero.

  However, $10^n < 10^n + k < 10^(n+1)$, so $10^n + k$ is not a power of $10$. By the given condition, its
  digit must be zero.

  This is a contradiction. Hence, $x$ is irrational.
//3
+ Consider $alpha + beta = gamma$ as a rational number, then $beta = alpha - gamma$ is also a rational
  number, because it is the difference between two rational numbers. Hence, our aassumption is wrong due to
  contradiction and therefore $alpha + beta$ is irrational. Similarly, we can prove this for $alpha - beta =
  delta$ treating as a rational number.
//4
+ Consider $alpha beta = gamma$ as a rational number, then $beta = gamma/alpha$ is also a rational number,
  because it is ratio of two rational numbers. This is a contradiction, and hence, $alpha beta$ is an
  irrational number. Similarly, we can prove it for $alpha/beta$.
//5
+ Suppose that $x$ and $y = sqrt(x^2 + x + 3)$ are rational numbers. Then the difference $y - x = z$ is also
  a rational number.

  $z = sqrt(x^2 + x + 3) - x => x + z = sqrt(x^2 + x + 3) => x = (z^2 - 3)/(1 - 2z)$, which is rational for
  all rational values of $z$ except $1/2$.

  Reverse Proof: Let $y = sqrt(x^2 + x + 3)$ be a rational number for all $x = (z^2 - 3)/(1 - 2z)$, where
  $z$ is a rational number not equal to $1/2$.

  Clarly $y = (z^2 - z + 3)/(|1 - 2z|)$ which is rational for all rationanl $z != 1/2$.
//6
+ Let the number $sqrt(2) + sqrt(3)$ be rational. Then $sqrt(3) - sqrt(2) = 1/(sqrt(3) + sqrt(2))$ would
  also be a rational number. Whence $sqrt(3) - sqrt(2) + sqrt(3) + sqrt(2) = 2sqrt(3)$ would also be a
  rational number. But we know that it is an irrational number. Thus, our assumption is wrong and the
  required result is proved.
//7
+ We may assume that $h < 1 => h^2 < h$ and $(r + h^2) < r^2 + 2r h + h$. So it is sufficient to put $r^2 +
  2r h + h = 2 => h = (2 - r^2)/(2r + 1)$.
//8
+ We may assume that $h > 1 => h^2 > h$ and $(r - h^2) > r^2 - 2r h + h$. So it is sufficient to put $r^2 -
  2r h + h = 2 => h = (2 - r^2)/(1 - 2r)$.
//9
+ The inequality $|2x - 3| < 1$ is equivalent to $-1 < 2x - 3 < 1 => 2 < 2x < 4 => 1 < x < 2$.
//10
+ The inequality $(x - 2)^2 >= 4$ is equivalent to $x^2 - 4x >= 0 => x <= 0$ and $x >= 4$.
//11
+ The inequality $x^2 + 2x - 8 <= 0$ is equivalent to $(x + 4)(x - 2) <= 0 => x >= -4$ and $x <= 2$.
//12
+ The given inequality is valid for those values of $x$ at which  $x^2 - 7x + 12 < 0$, whence $3 < x < 4$.
//13
+ At $x >= 0$ the given inequality becomes $x = x + 5$, which has no solution. At $x < 0$ we have $-x = x +
  5 => x = -5/2$. This value satisfied the equation.
//14
+ At $x >= 0$ the given inequality becomes $x = x - 5$, which has no solution. At $x < 0$ we have $x = 5/2$
  which contradicts $x < 0$, thus the equation has no solution.
//15
+ The equation is of the form $|f(x)| = f(x)$. This property holds true if and only if $f(x) >= 0$.

  Therefore, we must solve the inequality $(x - 1) / (x + 1) >= 0$

  The expression is undefined when the denominator is zero: $x + 1 = 0 => x = -1$

  The critical points are $x = -1$ and $x = 1$. Using the sign scheme method:
  - For $x > 1$: The expression is positive.
  - For $-1 < x < 1$: The expression is negative.
  - For $x < -1$: The expression is positive.

  The inequality is satisfied when $x < -1$ or $x >= 1$.

  Thus, the final solution set in interval notation is $x in (-infinity, -1) union [1, infinity)$
//16
+ The equation is of the form $|f(x)| = -f(x)$. This property holds true if and only if $f(x) <= 0$.

  Therefore, we must solve the quadratic inequality $x^2 - 5x + 6 <= 0$

  Factoring the expression gives $(x - 2)(x - 3) <= 0$

  The critical points are $x = 2$ and $x = 3$. Using the sign scheme method:
  - For $x > 3$: The expression is positive.
  - For $2 <= x <= 3$: The expression is negative or zero.
  - For $x < 2$: The expression is positive.

  The inequality is satisfied when $x$ lies between or equal to $2$ and $3$.

  Thus, the final solution set in interval notation is $x in [2, 3]$.
//17
+ The equality $|a + b| = |a| + |b|$ is valid if and only if both the operands have the same sign. We see
  that $x^2 + 4x + 9 = (x + 2)^2 + 5$ is allways positive so the equality if true for all those values of
  $x$ for which $2x - 3 >= 0 => x >= 3/2$.
//18
+ The equality $|a - b| = |a| - |b|$ holds true if and only if $a$ and $b$ have the same sign and $|a| >=
  |b|$. In this case the equality will hold true for the values of $x$ at which $x^4 - 4 >= x^2 + 2 => x^2 -
  2 > = 1 => |x| >= sqrt(3)$.
//19
+ The given inequality is $|3x - 5| > |2x + 3|$

  Since both sides of the inequality are non-negative, we can square both sides without changing the
  inequality sign $(3x - 5)^2 > (2x + 3)^2$

  Rearranging the terms to one side gives $(3x - 5)^2 - (2x + 3)^2 > 0$

  Using the difference of squares identity $a^2 - b^2 = (a - b)(a + b)$, we factor the expression $((3x - 5)
  - (2x + 3)) ((3x - 5) + (2x + 3)) > 0=>(x - 8)(5x - 2) > 0$

  The critical points are $x = 2/5$ and $x = 8$. Using the sign scheme method:
  - For $x > 8$: The product is positive.
  - For $2/5 < x < 8$: The product is negative.
  - For $x < 2/5$: The product is positive.

  Therefore, the inequality holds for $x < 2/5$ or $x > 8$.

  In interval notation, the solution set is $x in (-infinity, 2/5) union (8, infinity)$.
//20
+ Let $a = x^2$ and $b = 5x$. The given inequality can be rewritten as $|a - b| > |a| - |b|$

  Let us determine the condition for equality $|a - b| = |a| - |b|$:
  1. For the right-hand side to be non-negative, we must have $|a| >= |b|$.
  2. Squaring both sides yields $(a - b)^2 = (|a| - |b|)^2 => a^2 - 2a b + b^2 = a^2 - 2|a b| + b^2 => a b =
     |a b| => a b >= 0$

  Thus, equality holds if and only if both $a b >= 0$ and $|a| >= |b|$ are satisfied.

  Substituting $a = x^2$ and $b = 5x$ back into the equality conditions:
  1. $a b >= 0 => x^2(5x) >= 0 => 5x^3 >= 0 => x >= 0$
  2. $|a| >= |b| => x^2 >= |5x|$

  Since $x >= 0$ from the first condition, $|5x| = 5x$. The inequality becomes $x^2 >= 5x => x(x - 5) >= 0
  => x = 0 text(" or ") x >= 5$

  Therefore, equality holds exactly when $x = 0$ or $x in [5, infinity)$.

  Since the original expression requires a strict inequality ($>$), we exclude these equality regions from
  the set of all real numbers.

  Thus, the final solution set in interval notation is $x in (-infinity, 0) union (0, 5)$.
//21
+ The given equation is $|sin x| = sin x + 1$.

  We analyze this equation by splitting it into two cases based on the sign of $sin x$:

  *Case 1:* $sin x >= 0$. In this case, $|sin x| = sin x$. Substituting this into the equation gives:
  $sin x = sin x + 1 => 0 = 1$
  This is a contradiction, so there are no solutions when $sin x >= 0$.

  *Case 2:* $sin x < 0$. In this case, $|sin x| = -sin x$. Substituting this into the equation gives:
  $-sin x = sin x + 1 => 2sin x = -1 => sin x = -1/2$

  Since $-1/2 < 0$, this value perfectly satisfies the condition $sin x < 0$.

  The principal solutions for $sin x = -1/2$ are $x = pi + pi/6 = (7pi)/6 quad text("and") quad x = 2pi -
  pi/6 = (11pi)/6$

 Rewriting these in standard general form yields $x = 2k pi - pi/6 quad text("and") quad x = 2k pi -
 (5pi)/6, quad k in ZZ$.
//22
+ Since $x^2 = |x|^2$ for all real numbers $x$, we can rewrite the equation as $|x|^2 - 2|x| - 3 = 0$

  Let $y = |x|$, where $y >= 0$. The equation becomes a standard quadratic equation in terms of $y$: $y^2 -
  2y - 3 = 0$

  Factoring the quadratic expression gives $(y - 3)(y + 1) = 0$

  This yields two possible values for $y$ i.e. $y = 3 quad text("or") quad y = -1$

  Since $y = |x|$ must be non-negative ($y >= 0$), we reject $y = -1$.

  Therefore, we have $|x| = 3 => x = plus.minus 3$
//23
+ Given the equation $a x = a$

  We are given that $a != 0$. For any non-zero element in a field (such as the real numbers), its
  multiplicative inverse $a^(-1)$ (or $1/a$) exists.

  Multiplying both sides of the equation by $a^(-1)$ on the left $a^(-1) dot (a x) = a^(-1) dot a$

  By the associative property of multiplication, we can group the terms as follows $(a^(-1) dot a) x =
  a^(-1) dot a$

  Using the property of the multiplicative inverse ($a^(-1) dot a = 1$): $1 dot x = 1$

  By the identity property of multiplication ($1 dot x = x$): $x = 1$.
//24
+ To prove the identity, we start with the right-hand side (RHS) of the equation: $"RHS" = (x + y)(x - y)$

  Applying the distributive property (expanding the two binomial factors): $= x(x - y) + y(x - y) = x^2
  - x y + y x - y^2$

  By the commutative property of multiplication, the product of real variables satisfies $y x = x y$: $= x^2
  - x y + x y - y^2$

  The two middle terms $-x y$ and $+x y$ are additive inverses, meaning they sum up to zero ($-x y + x y =
  0$): $= x^2 - 0 - y^2 = x^2 - y^2 = "LHS"$

  Since the right-hand side simplifies exactly to the left-hand side, the identity is proven.
//25
+ Given the equation: $x^2 = y^2$

  Subtracting $y^2$ from both sides allows us to group all terms on the left $x^2 - y^2 = 0$

  Using the difference of squares algebraic identity, we factor the left-hand side $(x + y)(x - y) = 0$

  By the zero-product property, if the product of two real numbers is zero, then at least one of the
  individual factors must be zero:
  1. $x - y = 0 => x = y$
  2. $x + y = 0 => x = -y$

  Therefore, if $x^2 = y^2$, it must be that $x = y$ or $x = -y$.
//26
+ To prove the identity, we begin by expanding the expression on the right-hand side (RHS): $"RHS" = (x -
  y)(x^2 + x y + y^2)$

  Applying the distributive property of multiplication over addition $= x(x^2 + x y + y^2) - y(x^2 + x y +
  y^2)$

  Distributing $x$ and $y$ into their respective terms: $= (x^3 + x^2 y + x y^2) - (y x^2 + x y^2 + y^3)$ $=
  x^3 + x^2 y + x y^2 - x^2 y - x y^2 - y^3$

  By the commutative property of multiplication, $y x^2 = x^2 y$. Rearranging and grouping the terms: $= x^3
  + (x^2 y - x^2 y) + (x y^2 - x y^2) - y^3$

  The additive inverse terms cancel out ($(x^2 y - x^2 y) = 0$ and $(x y^2 - x y^2) = 0$): $= x^3 + 0 + 0 -
  y^3 = x^3 - y^3 = "LHS"$

  Since expanding the right-hand side yields the left-hand side exactly, the identity is proven.
//27
+ To prove the identity, we expand the right-hand side (RHS) of the equation: $"RHS" = (x - y)(x^(n - 1) +
  x^(n - 2)y + x^(n - 3)y^2 + dots.c + x y^(n - 2) + y^(n - 1))$

  We apply the distributive property by separating the multiplication of $x$ and $-y$: $= x(x^(n - 1) + x^(n
  - 2)y + x^(n - 3)y^2 + dots.c + x y^(n - 2) + y^(n - 1)) - y(x^(n - 1) + x^(n - 2)y + x^(n - 3)y^2 +
  dots.c + x y^(n - 2) + y^(n - 1))$

  Distributing $x$ into the first group increases the exponent of $x$ by 1 for each term: $= (x^n + x^(n -
  1)y + x^(n - 2)y^2 + dots.c + x^2 y^(n - 2) + x y^(n - 1))$

  Distributing $-y$ into the second group increases the exponent of $y$ by 1 for each term: $- (x^(n -
  1)y + x^(n - 2)y^2 + x^(n - 3)y^3 + dots.c + x y^(n - 1) + y^n)$

  Aligning the two expansions vertically helps visualize how the intermediate terms pair up: $= &x^n &+ x^(n
  - 1)y &+ x^(n - 2)y^2 &+ dots.c &+ x y^(n - 1) \
  & &- x^(n - 1)y &- x^(n - 2)y^2 &- dots.c &- x y^(n - 1) &- y^n$

  Every intermediate term appears twice with opposite signs (as additive inverses). Combining these terms
  sums them to zero: $= x^n + 0 + 0 + dots.c + 0 - y^n = x^n - y^n = "LHS"$

  Since the right-hand side simplifies exactly to the left-hand side, the identity is proven for all $n in
  NN$.
//28
+ Let's look at the exact line where the error occurs: $(x + y)(x - y) = y(x - y)$

  If we substitute the starting condition $x = y$ into this specific step $(y + y)(0) = y(0) => 0 = 0$

  This line is perfectly true. However, to cross out $(x - y)$ from both sides to get $x + y = y$, you must
  divide by $(x - y)$. Since $x - y = 0$, you are performing: $((x + y) dot 0) / 0 = (y dot 0) / 0$

  Division by zero is undefined because it violates the foundational axioms of arithmetic, which is why the
  remaining lines break down into nonsense.
//29
+ By definition, a fraction can be written using the multiplicative inverse $ (a c) / (b c) = (a c) dot (b c)^(-1) $

  Using the property of the multiplicative inverse of a product, $(b c)^(-1) = b^(-1) c^(-1)$ (which is
  valid because $b dot c != 0$ ensures both $b != 0$ and $c != 0$): $ = (a c) dot (b^(-1) c^(-1)) $

  By the commutative and associative properties of multiplication, we can rearrange and regroup the terms $
  = (a dot b^(-1)) dot (c dot c^(-1)) $

  Using the property of the multiplicative inverse ($c dot c^(-1) = 1$): $ = (a dot b^(-1)) dot 1 $

  By the identity property of multiplication, multiplying any number by 1 leaves it unchanged $ = a dot b^(-1) $

 Converting the multiplicative inverse notation back into standard fractional form yields $ = a/b = "LHS" $

  Since the right-hand side simplifies exactly to the left-hand side, the identity is proven.
//30
+ To add two fractions with different denominators, we must first rewrite them with a common denominator. We
  choose the product $b d$ as the common denominator (which is valid since $b, d != 0 => b d != 0$).

  Using the identity $(x c)/(y c) = x/y$ proven previously, we multiply the numerator and denominator of
  each fraction by the missing factor from the common denominator:
  $a/b = (a dot d) / (b dot d) = (a d) / (b d)$ and
  $c/d = (c dot b) / (d dot b) = (b c) / (b d)$

  Now substitute these equivalent fractions back into the left-hand side (LHS) of the equation: $"LHS" = a/b
  + c/d = (a d) / (b d) + (b c) / (b d)$

  Using the distributive property of the multiplicative inverse over addition, we factor out $(b d)^(-1)$:
  $= (a d) dot (b d)^(-1) + (b c) dot (b d)^(-1)$ $= (a d + b c) dot (b d)^(-1)$

  Converting the multiplicative inverse notation back into standard fractional form yields $= (a d + b c) /
  (b d) = "RHS"$

  Since the left-hand side simplifies exactly to the right-hand side, the identity is proven.
//31
+ By the fundamental definition of a multiplicative inverse, a number $x^(-1)$ is the inverse of $x$ if and
  only if $x dot x^(-1) = 1$

  Therefore, to prove that $a^(-1)b^(-1)$ is the unique multiplicative inverse of $(a b)$, we must show that
  multiplying $(a b)$ by $a^(-1)b^(-1)$ yields exactly $1$: $"Product" = (a b) dot (a^(-1) b^(-1))$

  Using the associative property of multiplication, we can remove and rearrange the grouping of parentheses
  $= a dot b dot a^(-1) dot b^(-1)$

  By the commutative property of multiplication, we can swap the positions of adjacent elements ($b dot
  a^(-1) = a^(-1) dot b$): $= a dot a^(-1) dot b dot b^(-1)$

  Regrouping the terms using the associative property $= (a dot a^(-1)) dot (b dot b^(-1))$

  Applying the inverse property of multiplication ($a dot a^(-1) = 1$ and $b dot b^(-1) = 1$, which is valid
  since $a, b != 0$): $= 1 dot 1$

  By the identity property of multiplication ($1 dot 1 = 1$): $= 1$

  Since the product of $(a b)$ and $(a^(-1)b^(-1))$ is $1$, it follows by the uniqueness of the
  multiplicative inverse that $(a b)^(-1) = a^(-1)b^(-1)$.
//32
+ The algebraic identity $a/b dot c/d = (a c)/(b d)$ is proven by expressing the fractions in terms of
  multiplicative inverses and applying the associative and commutative properties.

  By definition, a fraction can be written using its multiplicative inverse: $a/b = a dot b^(-1)$ and $c/d =
  c dot d^(-1)$.

  Substituting these definitions into the left-hand side (LHS) of the equation $L H S = (a dot b^(-1)) dot (c
  dot d^(-1))$

  By the associative property of multiplication, we can remove the parentheses and group the terms together
  $= a dot b^(-1) dot c dot d^(-1)$

  Using the commutative property of multiplication, we can rearrange the order of the factors to group the
  numerators together and the inverses together ($b^(-1) dot c = c dot b^(-1)$): $= a dot c dot b^(-1) dot
  d^(-1)$

  Regrouping the terms using the associative property $= (a dot c) dot (b^(-1) dot d^(-1))$

  Using the property of multiplicative inverses for a product proven previously, $(b d)^(-1) = b^(-1)
  d^(-1)$ (which is valid since $b, d != 0 => b d != 0$): $= (a c) dot (b d)^(-1)$

  Converting this multiplicative inverse notation back into standard fractional form yields $= (a c)/(b d) =
  R H S$.
//33
+ The algebraic identity $(a/b)/(c/d) = (a d)/(b c)$ is proven by treating division as multiplication by a
  multiplicative inverse and expanding the expression using algebraic properties.

  By the foundational definition of division, dividing by a fraction is equivalent to multiplying by its
  multiplicative inverse $L H S = (a/b) / (c/d) = (a/b) dot (c/d)^(-1)$

  Using the fraction multiplication rule ($x/y = x dot y^(-1)$), we can rewrite $a/b$ and $c/d$: $= (a dot
  b^(-1)) dot (c dot d^(-1))^(-1)$

  Applying the property of the multiplicative inverse of a product ($(x y)^(-1) = x^(-1) y^(-1)$) to the
  second term $= (a dot b^(-1)) dot (c^(-1) dot (d^(-1))^(-1))$

  Since the inverse of an inverse returns the original element ($(d^(-1))^(-1) = d$), this simplifies to $=
  (a dot b^(-1)) dot (c^(-1) dot d)$

  By the associative and commutative properties of multiplication, we remove the parentheses and rearrange
  the terms to group the numerators together and the inverses together $= a dot d dot b^(-1) dot c^(-1) = (a
  d) dot (b dot c)^(-1)$

  Converting this multiplicative inverse notation back into standard fractional form yields $= (a d)/(b c) =
  R H S$.
//34
+ Since $b, d != 0$, the product $b d != 0$, meaning its multiplicative inverse $(b d)^(-1)$ exists.

  Forward Direction ($==>$): Assume $a/b = c/d$. Multiplying both sides of the equation by $b d$: $(a/b) dot b
  d = (c/d) dot b d$

  Using the definition of fractions and rearranging via associative and commutative properties $(a dot
  b^(-1)) dot b dot d = (c dot d^(-1)) dot b dot d => a dot (b^(-1) dot b) dot d = c dot b dot (d^(-1) dot d)$

  Since $b^(-1) dot b = 1$ and $d^(-1) dot d = 1$: $a dot 1 dot d = c dot b dot 1 => a d = b c$

  Backward Direction ($<==$): Assume $a d = b c$. Multiplying both sides by the inverse $(b d)^(-1) = b^(-1)
  d^(-1)$: $(a d) dot b^(-1) d^(-1) = (b c) dot b^(-1) d^(-1)$

  Rearranging the terms on both sides $(a dot b^(-1)) dot (d dot d^(-1)) = (c dot d^(-1)) dot (b dot b^(-1))$

  Since $d dot d^(-1) = 1$ and $b dot b^(-1) = 1$: $(a dot b^(-1)) dot 1 = (c dot d^(-1)) dot 1 =>a dot
  b^(-1) = c dot d^(-1) => a/b = c/d$

  For the fractions to be defined, both $a$ and $b$ must be non-zero ($a, b != 0$). Applying the
  cross-multiplication property proven above $a/b = b/a <=> a dot a = b dot b => a^2 = b^2$

  Subtracting $b^2$ from both sides and factoring via the difference of squares identity $a^2 - b^2 = 0 =>
  (a - b)(a + b) = 0$

  By the zero-product property, this holds if and only if $a - b = 0 => a = b => a + b = 0 => a = -b$

  Therefore, $a/b = b/a$ if and only if $a = plus.minus b$, where $a, b != 0$.
//35
+ The given inequality is $4 - x < 3 - 2x$

  To isolate the variable terms on one side, we add $2x$ to both sides of the inequality $4 - x + 2x < 3 =>
  4 + x < 3$

  Next, we isolate $x$ by subtracting $4$ from both sides $x < 3 - 4 => x < -1$

  Thus, the inequality holds for all real numbers less than $-1$. In interval notation, the solution set is
  $x in (-infinity, -1)$.
//36
+ The given inequality is $5 - x^2 < 8$

  Subtracting $5$ from both sides to isolate the $x^2$ term gives $-x^2 < 8 - 5 => -x^2 < 3$

  Multiplying both sides by $-1$ reverses the inequality sign $x^2 > -3$

  Since the square of any real number is always greater than or equal to zero ($x^2 >= 0$), it is
  automatically strictly greater than any negative number. Therefore, this inequality is true for all real
  values of $x$.

  In interval notation, the solution set is $x in (-infinity, infinity)$.
//37
+ The given inequality is $5 - x^2 < -2$

  Subtracting $5$ from both sides to isolate the quadratic term gives $-x^2 < -2 - 5 => -x^2 < -7$

  Multiplying both sides by $-1$ reverses the inequality sign $x^2 > 7$

  Taking the square root on both sides introduces absolute value bounds $|x| > sqrt(7)$

  This absolute value condition unfolds into two separate linear intervals $x < -sqrt(7) quad text("or")
  quad x > sqrt(7)$

  In interval notation, the solution set is $x in (-infinity, -sqrt(7)) union (sqrt(7), infinity)$.
//38
+ The given inequality is $(x - 1)(x - 3) > 0$

  The critical points where the expression equals zero are $x = 1$ and $x = 3$. These points split the real
  number line into three intervals. Using the sign scheme method:
  - For $x > 3$: Both factors $(x - 1)$ and $(x - 3)$ are positive, so their product is positive.
  - For $1 < x < 3$: The factor $(x - 1)$ is positive and $(x - 3)$ is negative, so their product is
    negative.
  - For $x < 1$: Both factors $(x - 1)$ and $(x - 3)$ are negative, so their product is positive.

  Since the inequality requires the product to be strictly greater than zero ($>$), we select the positive
  intervals.

  In interval notation, the solution set is $x in (-infinity, 1) union (3, infinity)$.
//39
+ The given inequality is $x^2 - 2x + 2 > 0$

  We can analyze this quadratic expression by completing the square $x^2 - 2x + 1 + 1 > 0 => (x - 1)^2 + 1 >
  0$

  For any real number $x$, the squared term $(x - 1)^2$ is always greater than or equal to zero. Adding $1$
  to it ensures the total value is at least $1$, which is always strictly greater than zero.

  Alternatively, evaluating the discriminant $(D = b^2 - 4a c)$ of the quadratic expression gives $D =
  (-2)^2 - 4(1)(2) = 4 - 8 = -4$

  Since the leading coefficient is positive ($a = 1 > 0$) and the discriminant is negative ($D < 0$), the
  quadratic expression is strictly positive for all real values of $x$.

  In interval notation, the solution set is $x in (-infinity, infinity)$.
//40
+ The given inequality is $x^2 + x + 1 > 2$

  Subtracting $2$ from both sides to set the right-hand side to zero gives $x^2 + x - 1 > 0$

  To find the critical points, we determine the roots of the corresponding quadratic equation $x^2 + x - 1 =
  0$ using the quadratic formula $x = (-1 plus.minus sqrt(1^2 - 4(1)(-1))) / 2 = (-1 plus.minus sqrt(5)) /
  2$

  These roots split the real number line into three intervals. Since the leading coefficient is positive ($1
  > 0$), the quadratic expression is positive outside the roots and negative between them.

  Therefore, the expression is strictly greater than zero when $x$ is less than the smaller root or greater
  than the larger root.

  In interval notation, the solution set is $x in (-infinity, (-1 - sqrt(5))/2) union ((-1 + sqrt(5))/2,
  infinity)$.
//41
+ Subtracting $16$ from both sides to set the right-hand side to zero gives $x^2 - x - 6 > 0$

  Factoring the quadratic expression on the left yields $(x - 3)(x + 2) > 0$

  The critical points where the expression equals zero are $x = -2$ and $x = 3$. These points split the real
  number line into three intervals. Using the sign scheme method:
  - For $x > 3$: Both factors are positive, so their product is positive.
  - For $-2 < x < 3$: The factor $(x - 3)$ is negative and $(x + 2)$ is positive, so their product is
    negative.
  - For $x < -2$: Both factors are negative, so their product is positive.

  Since the inequality requires the expression to be strictly greater than zero ($>$), we select the outer
  intervals.

  In interval notation, the solution set is $x in (-infinity, -2) union (3, infinity)$.
//42
+ We can analyze this quadratic expression by completing the square $x^2 + x + 1/4 + 3/4 > 0 => (x + 1/2)^2
  + 3/4 > 0$

  For any real number $x$, the squared term $(x + 1/2)^2$ is always greater than or equal to zero. Adding
  $3/4$ to it ensures the total value is at least $3/4$, which is always strictly greater than zero.

  Alternatively, evaluating the discriminant ($D = b^2 - 4a c$) of the quadratic expression gives $D = 1^2 -
  4(1)(1) = 1 - 4 = -3$

  Since the leading coefficient is positive ($a = 1 > 0$) and the discriminant is negative ($D < 0$), the
  quadratic expression is strictly positive for all real values of $x$.

  In interval notation, the solution set is $x in (-infinity, infinity)$.
//43
+ The critical points where the expression equals zero are $x = -5$, $x = 3$, and $x = pi$ (since $pi approx
  3.1416$, the ascending order is $-5 < 3 < pi$). These points split the real number line into four
  intervals. Using the sign scheme method:
  - For $x > pi$: All three factors are positive, so their product is positive.
  - For $3 < x < pi$: The factor $(x - pi)$ is negative while the other two are positive, so their product
    is negative.
  - For $-5 < x < 3$: The factors $(x - pi)$ and $(x - 3)$ are negative while $(x + 5)$ is positive, so
    their product is positive.
  - For $x < -5$: All three factors are negative, so their product is negative.

  Since the inequality requires the product to be strictly greater than zero ($>$), we select the positive
  intervals.

  In interval notation, the solution set is $x in (-5, 3) union (pi, infinity)$.
//44
+ To arrange the critical points in ascending order, we compare the values of the two constants:
  - $root(3, 2) approx 1.2599$
  - $sqrt(2) approx 1.4142$

  Since $root(3, 2) < sqrt(2)$, these critical points partition the real number line into three distinct
  intervals. Using the sign scheme method:
  - For $x > sqrt(2)$: Both factors are positive, making their product positive.
  - For $root(3, 2) < x < sqrt(2)$: The factor $(x - root(3, 2))$ is positive and $(x - sqrt(2))$ is
    negative, making their product negative.
  - For $x < root(3, 2)$: Both factors are negative, making their product positive.

  Since the inequality requires the product to be strictly greater than zero ($>$), we select the outer
  positive intervals.

  In interval notation, the solution set is $x in (-infinity, root(3, 2)) union (sqrt(2), infinity)$.
//45
+ We can rewrite the number $8$ as a power of $2$, since $8 = 2^3$: $2^x < 2^3$

  Since the base ($2$) is strictly greater than $1$, the exponential function $f(t) = 2^t$ is strictly
  increasing. This means we can drop the bases and preserve the direction of the inequality sign $x < 3$

  In interval notation, the solution set is $x in (-infinity, 3)$.
//46
+ Let us define a function for the left-hand side $f(x) = x + 3^x$

  We differentiate $f(x)$ to check its behavior $f'(x) = 1 + 3^x ln 3$(this we will study later)

  Since $3^x > 0$ and $ln 3 > 0$ for all real numbers, the derivative $f'(x)$ is always strictly positive
  ($f'(x) > 0$). This means that $f(x)$ is a strictly increasing function across its entire domain.

  By inspection, we look for a critical root where the expression equals exactly $4$: $f(1) = 1 + 3^1 = 4$

  Because the function is strictly increasing, it will output values less than $4$ if and only if the input
  $x$ is strictly less than $1$: $x < 1$

  In interval notation, the solution set is $x in (-infinity, 1)$.
//47
+ To combine the fractions on the left-hand side, we find a common denominator $((x - 1) + x) / (x(x - 1)) >
  0 => (2x - 1) / (x(x - 1)) > 0$

  The expression is undefined when the denominator is zero $x = 0 quad text("or") quad x = 1$

  The numerator equals zero at e$2x - 1 = 0 => x = 1/2$

  These three critical points ($0, 1/2, 1$) split the real number line into four intervals. Using the sign
  scheme (Wavy Curve) method:
  - For $x > 1$: All factors are positive, so the expression is positive.
  - For $1/2 < x < 1$: The numerator $(2x-1)$ is positive, but the factor $(x-1)$ is negative, making the
    expression negative.
  - For $0 < x < 1/2$: The numerator $(2x-1)$ and the factor $(x-1)$ are both negative, but $x$ is positive,
    so the expression is positive.
  - For $x < 0$: All three individual linear components are negative, making the entire expression negative.

  Since the inequality requires the expression to be strictly greater than zero ($>$), we select the
  positive intervals.

  In interval notation, the solution set is $x in (0, 1/2) union (1, infinity)$.
//48
+ The critical points where either the numerator or the denominator equals zero are:
  - From the numerator: $x - 1 = 0 => x = 1$
  - From the denominator: $x + 1 = 0 => x = -1$ (Note: the expression is undefined at $x = -1$)

  These critical points split the real number line into three intervals. Using the sign scheme method:
  - For $x > 1$: Both the numerator and denominator are positive, so their quotient is positive.
  - For $-1 < x < 1$: The numerator $(x - 1)$ is negative, but the denominator $(x + 1)$ is positive, making
    their quotient negative.
  - For $x < -1$: Both the numerator and denominator are negative, so their quotient is positive.

  Since the inequality requires the expression to be strictly greater than zero ($>$), we select the
  positive intervals.

  In interval notation, the solution set is $x in (-infinity, -1) union (1, infinity)$.
//49
+ According to the additive property of order for real numbers, if we add the same number to both sides of a
  valid inequality, the direction of the inequality remains unchanged.

  First, we add $c$ to both sides of the first inequality ($a < b$): $a + c < b + c$

  Next, we add $b$ to both sides of the second inequality ($c < d$): $b + c < b + d$

  Now, we look at the two resulting relations $a + c < b + c$  and  $b + c < b + d$

  By the transitive property of inequality (if $x < y$ and $y < z$, then $x < z$), we connect these two
  statements $a + c < b + d$.
//50
+ According to the additive property of order for real numbers, adding the same value to both sides of a
  valid inequality preserves the truth of the relationship and keeps the inequality sign facing the same
  direction.

  First, we subtract $a$ from both sides of the inequality: $a - a < b - a => 0 < b - a$

  Next, we subtract $b$ from both sides to shift the variable terms $0 - b < b - a - b => -b < -a$.
//51
+ We are given two inequalities $a < b$ and $c > d$.

  From the second inequality $c > d$, multiplying both sides by $-1$ reverses the inequality sign, which
  gives $-c < -d$.

  Now, we can add the two inequalities $a < b$ and $-c < -d$ together because they face the same direction
  $a + (-c) < b + (-d)$

  Simplifying both sides yields the desired result $a - c < b - d$.
//52
+ By definition, $a < b$ means that the difference $b - a$ is a positive real number, so $b - a > 0$.

  We are also given that $c > 0$, meaning $c$ is a positive real number.

  The product of two positive real numbers is always positive. Therefore, multiplying the positive number $b
  - a$ by the positive number $c$ gives $(b - a) c > 0$

  Expanding the left side of the inequality using the distributive property yields $b c - a c > 0$

  Adding $a c$ to both sides of the inequality results in $b c > a c$, which can be rewritten as $a c < b c$.
//53
+ By definition, $a < b$ means that the difference $b - a$ is a positive real number, so $b - a > 0$.

  We are given that $c < 0$, which means $c$ is a negative real number. Consequently, its additive inverse
  $-c$ is a positive real number, so $-c > 0$.

  The product of two positive real numbers is always positive. Therefore, multiplying the positive number $b
  - a$ by the positive number $-c$ gives $(b - a)(-c) > 0$

  Expanding the left side of the inequality yields $-b c + a c > 0 => a c > b c$.
//54
+ We are given the inequality $a > 1$

  This inequality tells us that $a$ is a positive real number, since $a > 1 > 0$.

  Using the multiplicative property of inequalities, if we multiply both sides of a strict inequality by a
  positive number, the direction of the inequality is preserved. Multiplying both sides of $a > 1$ by the
  positive number $a$ yields $a(a) > 1(a)$

  Simplifying both sides gives the desired result $a^2 > a$.
//55
+ We are given the compound inequality $0 < a < 1$

  This statement gives us two pieces of information:
  1. $a < 1$
  2. $a > 0$ (meaning $a$ is a positive real number)

  Using the multiplicative property of inequalities, multiplying both sides of a strict inequality by a
  positive number preserves the direction of the inequality sign. Multiplying both sides of the inequality
  $a < 1$ by the positive number $a$ yields $a(a) < 1(a)$

  Simplifying both sides gives the desired result $a^2 < a$.
//56
+ We are given two chains of inequalities $0 <= a < b$ and $0 <= c < d$

  First, let us look at the inequality $a < b$. Since $0 <= c$ from our second given condition, $c$ is a
  non-negative number. We can examine two cases for $c$:

  *Case 1:* Suppose $c = 0$.
  If $c = 0$, then the left side of our target inequality becomes $a c = a(0) = 0$.
  From our given conditions, we know that $a < b$ and $0 <= a$, which means $b > 0$. We also know that $0 <=
  c < d$, so if $c = 0$, then $d > 0$. Since both $b$ and $d$ are strictly positive numbers, their product
  must be strictly positive $b d > 0$. Therefore, when $c = 0$, we have $a c = 0 < b d$, satisfying the
  theorem.

  *Case 2:* Suppose $c > 0$.
  If $c$ is strictly positive, we can use the multiplicative property of inequalities. Multiplying both
  sides of the strict inequality $a < b$ by the positive number $c$ preserves the direction of the
  inequality $a c < b c$

  Next, let us look at the inequality $c < d$. From our first given condition, we know that $b > a >= 0$,
  which means $b$ is a strictly positive number ($b > 0$). Multiplying both sides of the strict inequality
  $c < d$ by the positive number $b$ preserves the direction of the inequality $b c < b d$

  Now, we can combine our two strict inequalities using the transitive property of inequalities. Since $a c
  < b c$ and $b c < b d$, it follows that $a c < b d$

  In both possible cases, the strict inequality holds true.
//57
+ We are given the compound inequality $0 <= a < b$

  This provides two key relationships:
  1. $a < b$
  2. $0 <= a$, which also implies that $b > 0$ because $b > a >= 0$.

  We can evaluate the proof by breaking it down into two cases based on the value of $a$:

  *Case 1:* Suppose $a = 0$.
  If $a = 0$, then the left side of our target inequality becomes $a^2 = 0^2 = 0$.
  Since $b > a$, we know that $b > 0$. The square of any strictly positive number is also strictly positive,
  so $b^2 > 0$. Therefore, we have $a^2 = 0 < b^2$, which satisfies $a^2 < b^2$.

  *Case 2:* Suppose $a > 0$.
  If $a$ is strictly positive, we can apply the multiplicative property of inequalities. Multiplying both
  sides of the strict inequality $a < b$ by the positive number $a$ preserves the direction of the
  inequality sign $a(a) < b(a) => a^2 < a b$

  Next, since $b$ is also strictly positive ($b > 0$), we can multiply both sides of the same original
  strict inequality $a < b$ by $b$. This again preserves the direction of the inequality sign $a(b) < b(b)
  => a b < b^2$

  Now, we can combine these two strict inequalities using the transitive property of inequalities. Since
  $a^2 < a b$ and $a b < b^2$, it follows that $a^2 < b^2$

  In both cases, the strict inequality holds true.
//58
+ We are given that $a >= 0$, $b >= 0$, and $a^2 >= 0$ and $b >= 0$. Furthermore, because $a^2 < b^2$ and
  $a^2 >= 0$, it follows that $b^2 > 0$, which implies $b > 0$. Since $b$ is strictly positive and $a$ is
  non-negative, their sum must be strictly positive $b + a > 0$

  Since the factor $(b + a)$ is strictly positive, the other factor $(b - a)$ must also be strictly positive
  for their product to be greater than zero $b - a > 0$

  Adding $a$ to both sides of this inequality yields $b > a => a < b$.
//59
+ We are given the compound inequality $0 <= x < y$

  This establishes two important facts:
  1. $x < y$, which implies $y - x > 0$ (the difference is strictly positive).
  2. $0 <= x$, which also implies $y > 0$ because $y > x >= 0$.

  We can evaluate the expression $y^n - x^n$ using the algebraic identity for the difference of $n$-th
  powers $y^n - x^n = (y - x)(y^(n - 1) + y^(n - 2)x + y^(n - 3)x^2 + dots + y x^(n - 2) + x^(n - 1))$

  First, we consider the factor $(y - x)$. As established from our initial conditions, $y > x$, so this
  factor is strictly positive $y - x > 0$

  Second, we look at the second factor, which is the polynomial summation term $(y^(n - 1) + y^(n - 2)x +
  y^(n - 3)x^2 + dots + y x^(n - 2) + x^(n - 1))$

  Since $x >= 0$ and $y > 0$, every individual term in this summation is a product of non-negative numbers
  ($x$ raised to a power) and strictly positive numbers ($y$ raised to a power). Therefore, every term in
  the sum is non-negative ($>= 0$). Furthermore, the very first term $y^(n - 1)$ is strictly positive ($>
  0$) because $y > 0$. Adding non-negative terms to a strictly positive term ensures that the entire sum is
  strictly positive $(y^(n - 1) + y^(n - 2)x + y^(n - 3)x^2 + dots + y x^(n - 2) + x^(n - 1)) > 0$

  The product of two strictly positive real numbers is always strictly positive. Therefore, the product of
  these two factors must be greater than zero $(y - x)(y^(n - 1) + y^(n - 2)x + y^(n - 3)x^2 + dots + y x^(n
  - 2) + x^(n - 1)) > 0$

  Substituting our original identity back into the inequality gives $y^n - x^n > 0$. Adding $x^n$ to both
  sides yields the final desired result $x^n < y^n$.

  This holds true for any positive integer $n = 1, 2, 3, dots$.
//60
+ We have just proven in the previous problem than if $x < y$ then for all $n, x^n < y^n$.
//61
+ We are given that $x^n = y^n$, where $n$ is an odd positive integer ($n = 1, 3, 5, dots$).

  Subtracting $y^n$ from both sides of the equation gives $x^n - y^n = 0$

  We can factor the left side of the equation using the algebraic identity for the difference of $n$-th
  powers $(x - y)(x^(n - 1) + x^(n - 2)y + x^(n - 3)y^2 + dots + x y^(n - 2) + y^(n - 1)) = 0$

  According to the zero-product property, for a product of two factors to equal zero, at least one of the
  factors must be equal to zero. This leaves us with two possibilities:
  1. $x - y = 0$
  2. $x^(n - 1) + x^(n - 2)y + x^(n - 3)y^2 + dots + x y^(n - 2) + y^(n - 1) = 0$

  Let us analyze the first possibility. If $x - y = 0$, then adding $y$ to both sides directly yields $x = y$

  Now, let us analyze the second factor to determine if it can equal zero when $x != y$. Let the second
  factor be defined as the polynomial sum $S$. We can examine the case where $x != y$:

  Because $n$ is an odd integer, the number of terms in the summation $S$ is exactly $n$, which is an odd
  number of terms. We can multiply the entire expression $S$ by the positive term $(x - y)^2$ to evaluate
  its behavior, or we can look at the structure of the terms. A more direct way to show $S != 0$ when $x !=
  y$ is to see that if $x$ and $y$ have the same sign, all terms in $S$ are strictly positive (since all
  powers become positive products), so $S > 0$. If $x$ and $y$ have opposite signs, then because $n$ is odd,
  $x^n$ and $y^n$ would have opposite signs, making $x^n = y^n$ impossible unless $x = y = 0$.

  More formally, if we assume $x != y$, we can divide the original equation $x^n = y^n$ by $y^n$ (assuming
  $y != 0$, if $y = 0$ then $x^n = 0$ implies $x = 0$, so $x = y$). This yields $(x / y)^n = 1$

  Let $t = x / y$. The equation becomes $t^n = 1$. Since $n$ is an odd integer, the function $f(t) = t^n$ is
  strictly increasing on the entire set of real numbers because its derivative $f'(t) = n t^(n - 1)$ is
  non-negative everywhere ($n - 1$ is even) and only zero at $t = 0$. A strictly increasing function is
  injective (one-to-one), meaning it can take the value $1$ at exactly one real number. Since $1^n = 1$, the
  only real solution to $t^n = 1$ when $n$ is odd is $t = 1$

  Substituting $t = x / y$ back in gives $x / y = 1$

  Multiplying both sides by $y$ yields $x = y$

  Thus, the second factor cannot yield any additional real roots where $x != y$. Therefore, the only real
  solution to $x^n = y^n$ when $n$ is odd is $x = y$.
//62
+ We are given that $x^n = y^n$, where $n$ is an even positive integer ($n = 2, 4, 6, dots$).

  Subtracting $y^n$ from both sides of the equation gives $x^n - y^n = 0$

  Since $n$ is even, we can write $n = 2 k$ for some positive integer $k = 1, 2, 3, dots$. Substituting this
  into the equation yields $(x^k)^2 - (y^k)^2 = 0$

  We can factor the left side of the equation using the difference of squares identity $(x^k - y^k)(x^k +
  y^k) = 0$

  According to the zero-product property, at least one of these factors must equal zero. This gives us two
  cases to analyze:

  *Case 1:* $x^k - y^k = 0$. This simplifies to $x^k = y^k$. We can rewrite this by moving $y^k$ back to the
  other side to factor it as a difference of $k$-th powers $(x - y)(x^(k - 1) + x^(k - 2)y + dots + y^(k -
  1)) = 0$. This statement implies that $x - y = 0$, which yields $x = y$

  *Case 2:* $x^k + y^k = 0$. This simplifies to $x^k = -y^k$, which can be rewritten as $x^k - (-y)^k = 0$
  because $(-y)^k = y^k$ if $k$ is even, or $(-y)^k = -y^k$ if $k$ is odd. Factoring this expression as a
  difference of $k$-th powers yields a factor of $x - (-y) = 0$. This simplifies directly to $x = -y$

  Combining both cases, we find that the only real solutions satisfying the original equation are $x = y$ or
  $x = -y$.
//63
+ We are given the compound inequality $0 < a < b$, which implies that both $a$ and $b$ are strictly
  positive real numbers, and $b - a > 0$. We will prove the three parts of the inequality string chain by
  chain.

  *Part 1:* Prove that $a < sqrt(a b)$.

  We begin with the given inequality $a < b$

  Since $a > 0$, multiplying both sides of the inequality by $a$ preserves the direction of the inequality
  sign $a^2 < a b$

  Since both sides are strictly positive, taking the principal square root of both sides preserves the
  inequality $sqrt(a^2) < sqrt(a b)$

  Because $a > 0$, $sqrt(a^2) = a$. Thus, we obtain $a < sqrt(a b)$

  *Part 2:* Prove that $sqrt(a b) < (a + b)/2$ (The AM-GM Inequality)

  Consider the square of the difference between the square roots of $b$ and $a$. Since $a != b$, their
  square roots are not equal, so their difference is non-zero. The square of any non-zero real number is
  strictly positive $(sqrt(b) - sqrt(a))^2 > 0$

  Expanding the left side of the inequality using the perfect square identity yields $b - 2 sqrt(a b) + a >
  0$

  Rearranging the terms gives $a + b - 2 sqrt(a b) > 0$

  Adding $2 sqrt(a b)$ to both sides of the inequality yields $a + b > 2 sqrt(a b)$

  Dividing both sides by the positive number $2$ preserves the inequality direction $(a + b)/2 > sqrt(a b)$

  *Part 3:* Prove that $(a + b)/2 < b$

  We begin again with the given inequality $a < b$

  Adding $b$ to both sides of the inequality preserves the inequality direction $a + b < b + b => a + b < 2 b$

  Dividing both sides by the positive number $2$ gives $(a + b)/2 < b$.
//64
+ By definition, the absolute value $|x|$ of a real number is equal to $x$ if $x >= 0$, and equal to $-x$ if
  $x < 0$. To remove the modulus sign, we must determine whether the inner expression is positive or negative.

  Let us analyze the inner terms $sqrt(2) + sqrt(3) - sqrt(5) + sqrt(7)$

  We can pair and compare the terms to determine the overall sign:
  1. First, consider the term $sqrt(3) - sqrt(5)$. Since $3 < 5$, it follows that $sqrt(3) < sqrt(5)$, which
     means $sqrt(3) - sqrt(5) < 0$.
  2. However, we can compare $sqrt(3)$ directly with $sqrt(5) - sqrt(2)$. Squaring both expressions yields
     $(sqrt(3))^2 = 3$
     $(sqrt(5) - sqrt(2))^2 = 5 - 2 sqrt(10) + 2 = 7 - 2 sqrt(10)$
     Since $sqrt(10) > 3.16$, $2 sqrt(10) > 6.32$, which means $7 - 2 sqrt(10) < 0.68$. Since $3 > 0.68$, it
     follows that $sqrt(3) > sqrt(5) - sqrt(2)$, so $sqrt(2) + sqrt(3) - sqrt(5) > 0$.

  3. Additionally, $sqrt(7)$ is strictly positive ($sqrt(7) > 0$).

  Since $sqrt(2) + sqrt(3) - sqrt(5) > 0$ and $sqrt(7) > 0$, the sum of all four terms is strictly positive
  $sqrt(2) + sqrt(3) - sqrt(5) + sqrt(7) > 0$

  Because the entire expression inside the modulus is strictly positive, the absolute value sign can be
  directly dropped without changing any signs $sqrt(2) + sqrt(3) - sqrt(5) + sqrt(7)$.
//65
+ According to the triangle inequality for real numbers, the absolute value of the sum of two real numbers
  is always less than or equal to the sum of their individual absolute values $|a + b| <= |a| + |b|$

  Subtracting $|a| + |b|$ from both sides of this inequality yields $|a + b| - |a| - |b| <= 0$

  This confirms that the expression inside the outermost absolute value sign is always non-positive (less
  than or equal to zero) for any real numbers $a$ and $b$.

  By the definition of absolute value, if an expression $x <= 0$, then $|x| = -x$. Therefore, we can
  eliminate the outermost pair of absolute value signs by multiplying the entire inner expression by $-1$:
  $-(|a + b| - |a| - |b|)$

  Distributing the negative sign across the terms inside the parentheses yields $-|a + b| + |a| + |b|$

  Rearranging the terms gives the final simplified expression $|a| + |b| - |a + b|$.
//66
+ According to the triangle inequality for real numbers, the absolute value of the sum of two quantities is
  always less than or equal to the sum of their individual absolute values. Let us treat $a + b$ as a single
  quantity and $c$ as the second quantity. The triangle inequality states $|(a + b) + c| <= |a + b| + |c|$

  This can be written as $|a + b + c| <= |a + b| + |c|$

  Subtracting $|a + b + c|$ from both sides of the inequality yields $0 <= |a + b| + |c| - |a + b + c|$

  Which means $|a + b| + |c| - |a + b + c| >= 0$

  This confirms that the expression inside the outermost absolute value sign is always non-negative (greater
  than or equal to zero) for any real numbers $a$, $b$, and $c$.

  By the definition of absolute value, if an expression $x >= 0$, then $|x| = x$. Therefore, we can
  eliminate the outermost pair of absolute value signs directly without changing any signs inside $|a + b| +
  |c| - |a + b + c|$.
//67
+ We begin by recognizing that the expression inside the absolute value bars is a perfect square
  trinomial. We can rewrite it using the perfect square identity $x^2 - 2x y + y^2 = (x - y)^2$

  Substituting this back into the original expression yields $|(x - y)^2|$

  For any real numbers $x$ and $y$, their difference $(x - y)$ is a real number. The square of any real
  number is always non-negative $(x - y)^2 >= 0$

  By the definition of absolute value, if an expression $u >= 0$, then $|u| = u$. Since $(x - y)^2$ is
  guaranteed to be non-negative, the absolute value bars can be removed entirely without altering the
  expression $(x - y)^2$

  Expanding this back out gives the final expression without any absolute value signs $x^2 - 2x y + y^2$.
//68
+ To eliminate absolute value signs, we evaluate the signs of the expressions enclosed within them from the
  inside out.

  *Step 1:* Simplify the inner absolute value terms
  1. Consider the first inner expression, $sqrt(2) + sqrt(3)$. Since both terms are positive numbers, their
  sum is strictly positive, meaning $sqrt(2) + sqrt(3) > 0$. Therefore, we can drop its absolute value signs
  $|sqrt(2) + sqrt(3)| = sqrt(2) + sqrt(3)$

  2. Consider the second inner expression, $sqrt(5) - sqrt(7)$. Since $5 < 7$, it follows that $sqrt(5) <
  sqrt(7)$, which means the difference is negative ($sqrt(5) - sqrt(7) < 0$). By the definition of absolute
  value, $|x| = -x$ when $x < 0$. Therefore $|sqrt(5) - sqrt(7)| = -(sqrt(5) - sqrt(7)) = sqrt(7) - sqrt(5)$

  Substituting these two simplified components back into the original expression yields $|(sqrt(2) +
  sqrt(3)) - (sqrt(7) - sqrt(5))| => |sqrt(2) + sqrt(3) - sqrt(7) + sqrt(5)| => |sqrt(2) + sqrt(3) + sqrt(5)
  - sqrt(7)|$

  *Step 2:* Determine the sign of the remaining outer expression
  Now we need to determine whether the inner expression $sqrt(2) + sqrt(3) + sqrt(5) - sqrt(7)$ is positive
  or negative to eliminate the outer modulus sign.

  Let us compare the positive components against the negative component $sqrt(2) + sqrt(3) + sqrt(5) > 1.41
  + 1.73 + 2.23 = 5.37$ and $sqrt(7) < 2.65$

  Since $5.37 > 2.65$, it is clear that $sqrt(2) + sqrt(3) + sqrt(5) - sqrt(7) > 0$

  Because the entire expression inside the outer absolute value sign is strictly positive, the remaining
  modulus sign can be directly dropped without altering any signs $sqrt(2) + sqrt(3) + sqrt(5) - sqrt(7)$.
//69
+ To express the given expression without any absolute value signs, we must consider the signs of both $b$
  and $a + b$. This requires dividing the real numbers into different cases based on the boundaries where
  the arguments equal zero, namely $b = 0$ and $a + b = 0$ (or $a = -b$).

  *Case 1:* Suppose $b >= 0$ and $a + b >= 0$ (which means $a >= -b$). Under these conditions, both
  arguments are non-negative, so their absolute value signs can be dropped directly $|a + b| - |b| = (a + b)
  - b = a$

  *Case 2:* Suppose $b >= 0$ and $a + b < 0$ (which means $a < -b$). Here, $b$ is non-negative but $a + b$
  is negative. Therefore, $|b| = b$ and $|a + b| = -(a + b)$: $|a + b| - |b| = -(a + b) - b = -a - 2 b$

  *Case 3:* Suppose $b < 0$ and $a + b >= 0$ (which means $a >= -b$). In this scenario, $b$ is negative but
  $a + b$ is non-negative. Therefore, $|b| = -b$ and $|a + b| = a + b$: $|a + b| - |b| = (a + b) - (-b) = a
  + 2 b$

  *Case 4:* Suppose $b < 0$ and $a + b < 0$ (which means $a < -b$). Under these conditions, both arguments
  are negative. Therefore, $|b| = -b$ and $|a + b| = -(a + b)$: $|a + b| - |b| = -(a + b) - (-b) = -a - b +
  b = -a$.
//70
+ To express the given expression without any absolute value signs, we must analyze the critical points
  where the expressions inside the modulus bars change sign. The inner absolute value $|x|$ has a critical
  point at $x = 0$, and the outer absolute value $|(|x| - 1)|$ has critical points where $|x| - 1 = 0$,
  which means $x = 1$ and $x = -1$.

  These critical points divide the real number line into four distinct intervals. We will evaluate the
  expression on each interval:

  *Case 1:* Suppose $x >= 1$. On this interval, $x$ is positive, so $|x| = x$. The expression becomes $|x -
  1|$. Since $x >= 1$, the term $x - 1$ is non-negative ($x - 1 >= 0$), allowing us to drop the outer
  absolute value bars directly $|(|x| - 1)| = x - 1$

  *Case 2:* Suppose $0 <= x < 1$. On this interval, $x$ is non-negative, so $|x| = x$. The expression
   becomes $|x - 1|$. Since $x < 1$, the term $x - 1$ is strictly negative ($x - 1 < 0$). By definition, the
   absolute value of a negative expression is its negation $|(|x| - 1)| = -(x - 1) = 1 - x$

  *Case 3:* Suppose $-1 < x < 0$. On this interval, $x$ is negative, so $|x| = -x$. The expression becomes
   $|-x - 1|$. Since $x > -1$, multiplying by $-1$ gives $-x < 1$, which means $-x - 1 < 0$. Because the
   inner quantity is negative, we take its negation $|(|x| - 1)| = -(-x - 1) = x + 1$

  *Case 4:* Suppose $x <= -1$. On this interval, $x$ is negative, so $|x| = -x$. The expression becomes $|-x
   - 1|$. Since $x <= -1$, multiplying by $-1$ gives $-x >= 1$, which means $-x - 1 >= 0$. Because the inner
  quantity is non-negative, we drop the outer bars directly $|(|x| - 1)| = -x - 1$.
//71
+ To express the given expression without any absolute value signs, we must analyze the two components
  containing modulus bars: $|x|$ and $|x^2|$.

  1. For the first term, $|x|$, the critical point is $x = 0$. By definition, $|x| = x$ if $x >= 0$, and
     $|x| = -x$ if $x < 0$.
  2. For the second term, $|x^2|$, we note that for any real number $x$, its square $x^2$ is always
     non-negative ($x^2 >= 0$). Therefore, the absolute value sign around $x^2$ can be directly removed for
     all real numbers $|x^2| = x^2$

  This simplifies the original expression to $|x| - x^2$

  Now, we break this down into two distinct intervals based on the sign of $x$:

  *Case 1:* Suppose $x >= 0$. On this interval, $x$ is non-negative, so $|x| = x$. Substituting this into
  the simplified expression yields $x - x^2$

  *Case 2:* Suppose $x < 0$. On this interval, $x$ is strictly negative, so $|x| = -x$. Substituting this
  into the simplified expression yields $-x - x^2$.
//72
+ To express the given expression without any absolute value signs, we evaluate the inner absolute value
  term, $|a|$, by splitting the real numbers into two cases based on the sign of $a$.

  *Case 1:* Suppose $a >= 0$. If $a$ is non-negative, then by definition, $|a| = a$. Substituting this into
   the original expression yields $a - |(a - a)|$

  Simplifying inside the remaining absolute value gives $a - |0|$

  Since $|0| = 0$, the expression simplifies completely to $a$.

  *Case 2:* Suppose $a < 0$. If $a$ is strictly negative, then by definition, $|a| = -a$. Substituting this
  into the original expression yields $a - |(a - (-a))| => a - |(a + a)| => a - |2 a|$

  Now we must evaluate the remaining absolute value sign, $|2 a|$. Since we are under the condition that $a
  < 0$, multiplying by the positive number $2$ preserves the sign, so $2 a < 0$. The absolute value of a
  negative expression is its negation $|2 a| = -(2 a) = -2 a$

  Substituting this back into our expression gives $a - (-2 a) => 3 a$.
//73
+ By the definition of absolute value, the equation $|x - 3| = 8$ implies that the expression inside the
  modulus bars must equal either $8$ or $-8$. This gives us two separate linear equations to solve:

  *Case 1:* $x - 3 = 8$

  Adding $3$ to both sides of the equation yields $x = 8 + 3 => x = 11$

  *Case 2:* $x - 3 = -8$

  Adding $3$ to both sides of the equation yields $x = -8 + 3 => x = -5$.
//74
+ By the properties of absolute value inequalities, an inequality of the form $|u| < c$ (where $c > 0$) is
  logically equivalent to the compound inequality $-c < u < c$.

  Applying this rule to $|x - 3| < 8$ allows us to remove the absolute value bars and write $-8 < x - 3 < 8$

  To isolate $x$ in the middle, we add $3$ to all three parts of the compound inequality $-8 + 3 < x < 8 +
  3$

  Simplifying the arithmetic on both sides yields the final interval $-5 < x < 11$.
//75
+ By the properties of absolute value inequalities, an inequality of the form $|u| < c$ (where $c > 0$) can
  be rewritten as the compound inequality $-c < u < c$.

  Applying this property to $|x + 4| < 2$ allows us to remove the absolute value bars and write $-2 < x + 4
  < 2$

  To isolate $x$ in the middle, we subtract $4$ from all three parts of the compound inequality $-2 - 4 < x
  < 2 - 4$

  Simplifying the arithmetic yields the final interval $-6 < x < -2$.
//76
+ To solve the inequality $|x - 1| + |x - 2| > 1$, we find the critical points where the expressions inside
  the absolute value bars change sign. The critical points are $x = 1$ and $x = 2$. These points divide the
  real number line into three separate intervals. We will analyze the inequality on each interval:

  *Case 1:* Suppose $x < 1$. On this interval, both $x - 1 < 0$ and $x - 2 < 0$. Therefore, $|x - 1| = -(x -
  1)$ and $|x - 2| = -(x - 2)$. Substituting these into the inequality gives $-(x - 1) - (x - 2) > 1 => -x +
  1 - x + 2 > 1 => -2 x + 3 > 1$

  Subtracting $3$ from both sides yields $-2 x > -2$

  Dividing both sides by the negative number $-2$ reverses the direction of the inequality sign $x < 1$

  Since our initial assumption for this case was $x < 1$, all numbers in the interval $x < 1$ are solutions.

  *Case 2:* Suppose $1 <= x <= 2$. On this interval, $x - 1 >= 0$ and $x - 2 <= 0$. Therefore, $|x - 1| = x
  - 1$ and $|x - 2| = -(x - 2)$. Substituting these into the inequality gives $(x - 1) - (x - 2) > 1 => x -
  1 - x + 2 > 1 => 1 > 1$

  The statement $1 > 1$ is false. Therefore, there are no solutions to the inequality within the interval $1
  <= x <= 2$.

  *Case 3:* Suppose $x > 2$. On this interval, both $x - 1 > 0$ and $x - 2 > 0$. Therefore, $|x - 1| = x -
  1$ and $|x - 2| = x - 2$. Substituting these into the inequality gives $(x - 1) + (x - 2) > 1 => 2 x - 3 >
  1$

  Adding $3$ to both sides yields $2 x > 4$

  Dividing both sides by the positive number $2$ preserves the inequality sign $x > 2$

  Since our initial assumption for this case was $x > 2$, all numbers in the interval $x > 2$ are solutions.

  Combining the valid solutions from all three cases, the inequality holds for all real numbers $x$ such
  that $x < 1$ or $x > 2$.
//77
+ To solve the inequality $|x - 1| + |x + 1| < 2$, we find the critical points where the expressions inside
  the absolute value bars change sign. The critical points are $x = 1$ and $x = -1$. These points divide the
  real number line into three separate intervals. We will analyze the inequality on each interval:

  *Case 1:* Suppose $x < -1$. On this interval, both $x - 1 < 0$ and $x + 1 < 0$. Therefore, $|x - 1| = -(x
  - 1)$ and $|x + 1| = -(x + 1)$. Substituting these into the inequality gives $-(x - 1) - (x + 1) < 2 => -x
  + 1 - x - 1 < 2 => -2 x < 2$

  Dividing both sides by the negative number $-2$ reverses the direction of the inequality sign $x > -1$

  However, our initial assumption for this case was $x < -1$. Since no numbers can be both strictly less
  than $-1$ and strictly greater than $-1$, there are no solutions in this interval.

  *Case 2:* Suppose $-1 <= x <= 1$. On this interval, $x - 1 <= 0$ and $x + 1 >= 0$. Therefore, $|x - 1| =
  -(x - 1)$ and $|x + 1| = x + 1$. Substituting these into the inequality gives $-(x - 1) + (x + 1) < 2 =>
  -x + 1 + x + 1 < 2 => 2 < 2$

  The statement $2 < 2$ is false. Therefore, there are no solutions to the inequality within the interval
  $-1 <= x <= 1$.

  *Case 3:* Suppose $x > 1$. On this interval, both $x - 1 > 0$ and $x + 1 > 0$. Therefore, $|x - 1| = x -
  1$ and $|x + 1| = x + 1$. Substituting these into the inequality gives $(x - 1) + (x + 1) < 2 => 2 x < 2$

  Dividing both sides by the positive number $2$ preserves the inequality sign $x < 1$

  However, our initial assumption for this case was $x > 1$. Since no numbers can be both strictly greater
  than $1$ and strictly less than $1$, there are no solutions in this interval.

  Since none of the cases yield any valid real numbers, there are no solutions to this inequality.
//78
+ We can solve this inequality by analyzing the geometric definition of absolute value or by using the
  triangle inequality.

  The triangle inequality states that for any real numbers $A$ and $B$: $|A| + |B| >= |A - B|$

  Let us choose $A = x + 1$ and $B = x - 1$. Substituting these values into the triangle inequality gives
  $|x + 1| + |x - 1| >= |(x + 1) - (x - 1)|$

  Simplifying the expression inside the right side absolute value yields $|x + 1| + |x - 1| >= |x + 1 - x +
  1| => |x + 1| + |x - 1| >= |2| => |x - 1| + |x + 1| >= 2$

  This tells us that for any real number $x$, the sum of the distances $|x - 1| + |x + 1|$ must always be
  greater than or equal to $2$.

  The given problem asks us to find all numbers $x$ such that this sum is strictly less than $1$: $|x - 1| +
  |x + 1| < 1$

  Since the sum is mathematically guaranteed to be at least $2$ for all real numbers, it is impossible for
  the sum to be less than $1$.

  Therefore, there are no real numbers $x$ that satisfy the inequality. The solution set is empty, denoted
  by $phi$.
//79
+ According to the zero-product property, for the product of two real numbers to be equal to zero, at least
  one of the individual factors must equal zero. Applying this property to our equation gives two separate
  cases:

  1. $|x - 1| = 0$
  2. $|x + 1| = 0$

  Let us solve each case:

  *Case 1:* $|x - 1| = 0$

  The absolute value of an expression is zero if and only if the expression itself is zero $x - 1 = 0$

  Adding $1$ to both sides yields $x = 1$

  *Case 2:* $|x + 1| = 0$

  Similarly, setting the inner expression equal to zero gives $x + 1 = 0$

  Subtracting $1$ from both sides yields $x = -1$

  Therefore, the only numbers that satisfy the equation are $x = 1$ and $x = -1$.
//80
+ By using the property of absolute values $|A| dot |B| = |A dot B|$, we can combine the two factors on the
  left side of the equation: $|(x - 1)(x + 2)| = 3$

  Expanding the quadratic expression inside the absolute value bars yields $|x^2 + 2 x - x - 2| = 3 => |x^2
  + x - 2| = 3$

  By the definition of absolute value, this single equation splits into two separate quadratic equations to
  solve:

  *Case 1:* $x^2 + x - 2 = 3$. Subtracting $3$ from both sides gives $x^2 + x - 5 = 0$

  We can solve this quadratic equation using the quadratic formula $x = (-b +- sqrt(b^2 - 4 a c)) / (2 a)$,
  where $a = 1$, $b = 1$, and $c = -5$: $x = (-1 +- sqrt(1^2 - 4(1)(-5))) / (2(1)) => x = (-1 +- sqrt(1 +
  20)) / 2 => x = (-1 +- sqrt(21)) / 2$

  Both of these real numbers are valid solutions for this case.

  *Case 2:* $x^2 + x - 2 = -3$. Adding $3$ to both sides gives $x^2 + x + 1 = 0$

  We check the discriminant $Delta = b^2 - 4 a c$ for this equation to determine if it has real roots, using
  $a = 1$, $b = 1$, and $c = 1$: $Delta = 1^2 - 4(1)(1) = 1 - 4 = -3$

  Since the discriminant is strictly negative ($Delta < 0$), there are no real solutions produced by this case.

  Combining our findings, the only real numbers $x$ that satisfy the original equation are $x = (-1 +
  sqrt(21)) / 2$ and $x = (-1 - sqrt(21)) / 2$.
//81
+ We can prove this identity by evaluating the four possible cases for the signs of the real numbers $x$ and $y$:

  *Case 1:* Suppose $x >= 0$ and $y >= 0$. If both numbers are non-negative, their product is also
  non-negative, so $x y >= 0$. By definition, the absolute value of a non-negative number is the number
  itself $|x| = x$, $|y| = y$, and $|x y| = x y$

  Therefore, the left side is $|x y| = x y$, and the right side is $|x| dot |y| = x y$. Both sides are
  equal.

  *Case 2:* Suppose $x < 0$ and $y < 0$. If both numbers are strictly negative, their individual absolute
  values are their negations, so $|x| = -x$ and $|y| = -y$. The product of two negative numbers is strictly
  positive, so $x y > 0$, which means $|x y| = x y$. Evaluating both sides gives Left side: $|x y| = x
  y$. Right side: $|x| dot |y| = (-x)(-y) = x y$. Both sides are equal.

  *Case 3:* Suppose $x >= 0$ and $y < 0$. Here, $x$ is non-negative, so $|x| = x$. The term $y$ is negative,
  so $|y| = -y$. The product of a non-negative number and a negative number is non-positive, so $x y <= 0$,
  which means $|x y| = -(x y) = -x y$. Evaluating both sides gives: Left side: $|x y| = -x y$. Right side:
  $|x| dot |y| = x(-y) = -x y$. Both sides are equal.

  *Case 4:* Suppose $x < 0$ and $y >= 0$. By symmetry with Case 3, $x$ is negative, so $|x| = -x$. The term
  $y$ is non-negative, so $|y| = y$. The product is non-positive, so $x y <= 0$, which means $|x y| = -(x y) =
  -x y$. Evaluating both sides gives: Left side: $|x y| = -x y$. Right side: $|x| dot |y| = (-x)y = -x y$.
  Both sides are equal.

  In all possible cases, the relationship holds true.
//82
+ We are given that $x != 0$, which means $x$ must be either strictly positive ($x > 0$) or strictly
  negative ($x < 0$). We can evaluate the proof by analyzing these two cases:

  *Case 1:* Suppose $x > 0$. If $x$ is strictly positive, its absolute value is equal to itself, so $|x| =
  x$. The reciprocal of a strictly positive number is also strictly positive, which means $1 / x >
  0$. Therefore, the absolute value of the reciprocal is equal to itself $lr(|1 / x|) = 1 / x$

  Substituting $|x| = x$ into the right side of our target equation yields $1 /(|x|) = 1 / x$

  Since both sides equal $1 / x$, the statement holds true for $x > 0$.

  *Case 2:* Suppose $x < 0$. If $x$ is strictly negative, its absolute value is equal to its negation, so
  $|x| = -x$. The reciprocal of a strictly negative number is also strictly negative, which means $1 / x <
  0$. By the definition of absolute value, the absolute value of a negative number is its negation $lr(|1 /
  x|) = -(1 / x) = -1 / x$

  Now let us evaluate the right side of our target equation by substituting $|x| = -x$: $1 / (|x|) = 1 / (-x)
  = -1 / x$

  Since both sides equal $-1 / x$, the statement holds true for $x < 0$.

  In both possible cases, the equality holds true.
//83
+ We are given that $y != 0$. We can rewrite the fraction $x / y$ as a product of $x$ and the reciprocal of
  $y$: $x / y = x dot (1 / y)$

  Substituting this product into the right side of our target equation yields $lr(|x / y|) = lr(|x dot (1 / y)|)$

  Using the multiplicative property of absolute values, which states that $|A dot B| = |A| dot |B|$ for all
  real numbers $A$ and $B$, we can separate the factors inside the modulus:  $lr(|x dot (1 / y)|) = |x| dot
  lr(|1 / y|)$

  Next, we can apply the reciprocal property of absolute values, which states that if $y != 0$, then $lr(|1
  / y|) = 1 /(|y|)$. Substituting this into our expression gives $|x| dot lr(|1 / y|) = |x| dot 1 /(|y|)$

  Multiplying the terms together yields the final expression $|x| dot 1 /(|y|) = (|x|)/(|y|)$

  By standard algebraic substitution, we have linked the right side of our theorem directly to the left side
  $lr(|x / y|) = (|x|)/(|y|)$.
//84
+ We can write the difference $x - y$ as a sum by introducing the additive inverse of $y$: $x - y = x +
  (-y)$

  Applying the standard triangle inequality, which states that $|A + B| <= |A| + |B|$ for any real numbers
  $A$ and $B$, we set $A = x$ and $B = -y$: $|x + (-y)| <= |x| + |-y|$

  Substituting $x - y$ back into the left side gives $|x - y| <= |x| + |-y|$

  By the definition of absolute value, the absolute value of a number is equal to the absolute value of its
  additive inverse, meaning $|-y| = |y|$ for all real numbers $y$. Replacing $|-y|$ with $|y|$ in the
  inequality yields $|x - y| <= |x| + |y|$.
//85
+ We can express the variable $x$ by adding and subtracting $y$ inside an algebraic expression $x = x - y + y$

  Now, we group the terms as a sum of two quantities, $(x - y)$ and $y$, and apply the absolute value
  function to both sides $|x| = |(x - y) + y|$

  According to the triangle inequality, the absolute value of the sum of two real numbers is always less
  than or equal to the sum of their individual absolute values ($|A + B| <= |A| + |B|$). Setting $A = x - y$
  and $B = y$, we obtain $|(x - y) + y| <= |x - y| + |y|$

  By substituting our initial identity back into the left side of the inequality, we get $|x| <= |x - y| +
  |y|$

  To isolate the target terms, we subtract $|y|$ from both sides of the inequality $|x| - |y| <= |x - y|$.
//86
+ For all real numbers $x$ and $y$, $||x| - |y|| = -|x - y|$

  Which can be rewritten as $-|x - y| <= |x| - |y|$

  This provides the lower bound for our inequality chain.

  Combining the lower bound from Step 2 and the upper bound from Step 1 gives the continuous compound
  inequality $-|x - y| <= |x| - |y| <= |x - y|$

  By the properties of absolute value inequalities, any relationship of the form $-c <= u <= c$ is logically
  equivalent to $|u| <= c$. Setting $u = |x| - |y|$ and $c = |x - y|$, we obtain: $||x| - |y|| <= |x - y|$.
//87
+ We can write the sum of three terms $x + y + z$ as a sum of two quantities by grouping the first two terms
  together $x + y + z = (x + y) + z$

  Applying the standard triangle inequality for two variables, which states that $|A + B| <= |A| + |B|$ for
  any real numbers $A$ and $B$, we set $A = x + y$ and $B = z$: $|(x + y) + z| <= |x + y| + |z|$

  Next, we apply the triangle inequality once more to the first term on the right side, $|x + y|$: $|x + y|
  <= |x| + |y|$

  Adding $|z|$ to both sides of this second inequality yields $|x + y| + |z| <= |x| + |y| + |z|$

  By the transitive property of inequalities, combining our two inequality relationships gives $|x + y + z|
  <= |x| + |y| + |z|$

  Equality holds, meaning $|x + y + z| = |x| + |y| + |z|$, if and only if $x$, $y$, and $z$ all have the
  same sign (they are all non-negative or all non-positive). More formally, equality holds if and only if $x
  y >= 0$, $y z >= 0$, and $z x >= 0$.

  For a two-variable triangle inequality $|A + B| = |A| + |B|$ to hold, the product of the two numbers must
  be non-negative ($A B >= 0$), meaning they share the same sign direction or at least one is zero.

  From our step-by-step application of the triangle inequality above, full equality requires both
  intermediate steps to hold as strict equalities:

  1. For the first step $|(x + y) + z| = |x + y| + |z|$ to hold, the product of the two grouped terms must
     be non-negative $(x + y) z >= 0 => x z + y z >= 0$

  2. For the second step $|x + y| = |x| + |y|$ to hold, the product of $x$ and $y$ must be non-negative $x y
     >= 0$

  Let us analyze these combined conditions:
  - If $x$, $y$, and $z$ are all non-negative ($x >= 0, y >= 0, z >= 0$), then $x y >= 0$, $x z >= 0$, and
    $y z >= 0$, which satisfies both conditions. The expression becomes $(x + y + z) = x + y + z$, which is an
    equality.
  - If $x$, $y$, and $z$ are all non-positive ($x <= 0, y <= 0, z <= 0$), then $x y >= 0$, $x z >= 0$, and
    $y z >= 0$, which again satisfies both conditions. The expression becomes $|x + y + z| = -(x + y + z) =
    (-x) + (-y) + (-z) = |x| + |y| + |z|$, which is an equality.

  If any two numbers have opposite signs, say $x > 0$ and $y < 0$, then $x y < 0$, violating the second
  necessity. If $x$ and $y$ have the same sign but $z$ has the opposite sign, then $(x + y)$ and $z$ will
  have opposite signs, making their product $(x + y)z < 0$, violating the first necessity. Thus, equality
  cannot hold if there is any sign mismatch among the non-zero variables.

  Therefore, equality holds if and only if $x$, $y$, and $z$ all have the same sign.
//88
+ For all real numbers $x$ and $y$, $max(x, y) = (x + y + |y - x|)/2$ and $min(x, y) = (x + y - |y - x|)/2$.

  Proof for $max(x, y)$:

  We can prove this formula by analyzing the two possible orderings of the real numbers $x$ and $y$:

  *Case 1:* Suppose $x >= y$. By definition, if $x >= y$, then $max(x, y) = x$. Let us check the right side
  of the proposed identity. Since $x >= y$, the difference $x - y >= 0$, which means $y - x  0$. The
  absolute value of a positive number is the number itself $|y - x| = y - x$

  Substituting this into the formula gives $(x + y + (y - x)) / 2 = (2 y) / 2 = y$ Both sides equal $y$, so
  the formula holds for this case.

  Thus, $max(x, y) = (x + y + |y - x|)/2$ is proven for all real numbers.

  Proof for $min(x, y)$:

  We evaluate the formula using the same two ordering cases:

  *Case 1:* Suppose $x >= y$. By definition, if $x >= y$, then $min(x, y) = y$. Using our evaluation from
  before, $|y - x| = x - y$. Substituting this into the minimum formula gives: $(x + y - (x - y)) / 2 = (x +
  y - x + y) / 2 = (2 y) / 2 = y$. Both sides equal $y$, so the formula holds.

  *Case 2:* Suppose $x < y$. By definition, if $x < y$, then $min(x, y) = x$. Using our evaluation from
  before, $|y - x| = y - x$. Substituting this into the minimum formula gives $(x + y - (y - x)) / 2 = (x + y
  - y + x) / 2 = (2 x) / 2 = x$. Both sides equal $x$, so the formula holds.

  Thus, $min(x, y) = (x + y - |y - x|)/2$ is proven for all real numbers.

  Derivation of Formulas for Three Variables:

  We can find an explicit formula for $max(x, y, z)$ by using the associative property $max(x, y, z) =
  max(x, max(y, z))$.

  1. First, we write out the inner term $max(y, z)$ using our two-variable formula $max(y, z) = (y + z + |z
     - y|)/2$

  2. Next, we substitute this entire expression into our two-variable formula for $max(x, text("...") )$:
     $max(x, max(y, z)) = (x + max(y, z) + |max(y, z) - x|)/2$

  3. Expanding the terms inside the numerator yields $max(x, y, z) = (x + (y + z + |z - y|)/2 + lr(|(y + z + |z
     - y|)/2 - x|))/2$

  4. Multiplying the numerator and denominator by $2$ to clear the internal fractions gives the final
     formula for the maximum $max(x, y, z) = (2 x + y + z + |z - y| + |y + z + |z - y| - 2 x|)/4$

  We can derive the formula for $min(x, y, z)$ in an identical manner by using the property $min(x, y, z) =
  min(x, min(y, z))$:

  1. First, expand the inner term $min(y, z) = (y + z - |z - y|)/2$

  2. Substitute this expression into the two-variable minimum formula $min(x, min(y, z)) = (x + min(y, z) -
     |min(y, z) - x|)/2$

  3. Expanding the terms inside the numerator yields: $min(x, y, z) = (x + (y + z - |z - y|)/2 - lr(|(y + z -
     |z - y|)/2 - x|))/2$

  4. Clearing the internal fractions gives the final formula for the minimum $min(x, y, z) = (2 x + y + z -
     |z - y| - |y + z - |z - y| - 2 x|)/4$
//89
+ We can prove this identity by analyzing the cases for the sign of the real number $a$:

  *Case 1:* Suppose $a >= 0$. If $a$ is non-negative, then by definition, its absolute value is the number
   itself $|a| = a$

  Now let us look at the right side of our identity, $|-a|$. Since $a >= 0$, multiplying by $-1$ gives $-a
  <= 0$, meaning $-a$ is non-positive. By the definition of absolute value, the absolute value of a
  non-positive expression is its negation $|-a| = -(-a) = a$

  Since both sides equal $a$, the statement holds true for $a >= 0$.

  *Case 2:* Suppose $a  0$, meaning $-a$ is strictly positive. The absolute value of a positive expression
   is the expression itself $|-a| = -a$

  Since both sides equal $-a$, the statement holds true for $a < 0$.
//91
+ An "if and only if" statement requires us to prove the implication in both directions.

  Direction 1: Prove that if $|a| <= b$, then $-b <= a <= b$.

  We are given that $|a| <= b$. Since the absolute value of any real number is always non-negative ($|a| >=
  0$), it immediately follows that $b >= 0$

  Now, we evaluate the value of $a$ by splitting it into two possible cases based on its sign:

  Case 1.1: Suppose $a >= 0$. If $a$ is non-negative, then by definition, $|a| = a$. Substituting this into
  our given inequality $|a| <= b$ yields $a <= b$.

  Since $b >= 0$ and $a >= 0$, multiplying the inequality $b >= 0$ by $-1$ gives $-b <= 0$. Combining this
  with $a >= 0$ yields $-b <= 0 <= a$, which means $-b <= a$. Putting the inequalities together, we get $-b
  <= a <= b$

  Case 1.2: Suppose $a < 0$. If $a$ is strictly negative, then by definition, $|a| = -a$. Substituting this
  into our given inequality $|a| <= b$ yields $-a <= b$.

  Multiplying both sides of this inequality by $-1$ reverses the direction of the inequality sign $a >= -b$.

  Which can be written as $-b <= a$. Since $a < 0$ and we established $b >= 0$, it is clear that $a < 0 <=
  b$, which means $a <= b$. Putting the inequalities together, we get $-b <= a <= b$.

  In both cases, the compound inequality $-b <= a <= b$ holds true.

  Direction 2: Prove that if $-b <= a <= b$, then $|a| <= b$.

  We are given the compound inequality $-b <= a <= b$, which provides two pieces of information:

  1. $a <= b$
  2. $-b <= a$, which can be rewritten by multiplying both sides by $-1$ as $-a <= b$.

  We evaluate the expression $|a|$ based on the sign of $a$:

  Case 2.1: Suppose $a >= 0$. If $a$ is non-negative, then by definition, $|a| = a$. From our first given
  relationship, we know that $a <= b$. Therefore, substituting $|a|$ for $a$ directly yields $|a| <= b$

  Case 2.2: Suppose $a < 0$. If $a$ is strictly negative, then by definition, $|a| = -a$. From our second
  given relationship, we know that $-a <= b$. Therefore, substituting $|a|$ for $-a$ directly yields $|a| <=
  b$

  In both cases, the inequality $|a| <= b$ holds true.

  Since both directions have been proven, the equivalence is established.
//91
+ According to the theorem proven in the previous problem, a compound inequality of the form $-c <= u <= c$
  is logically equivalent to $|u| <= c$. We will use this property by setting $u = a + b$ and $c = |a| +
  |b|$.

  Therefore, to prove that $|a + b| <= |a| + |b|$, it is sufficient to prove the equivalent compound
  inequality $-(|a| + |b|) <= a + b <= |a| + |b|$

  Let us establish the upper and lower bounds for the individual variables $a$ and $b$ using the same
  property from the previous problem (since $|a| <= |a|$ and $|b| <= |b|$ are trivially true):

  1. For the variable $a$, we have $-|a| <= a <= |a|$

  2. For the variable $b$, we have $-|b| <= b <= |b|$

  Now, we can add these two compound inequalities together because their inequality signs all face the same
  direction. Adding the lower bounds, middle terms, and upper bounds side-by-side yields $-|a| + (-|b|) <= a
  + b <= |a| + |b|$

  Factoring out a negative sign from the left side of the inequality chain gives $-(|a| + |b|) <= a + b <=
  |a| + |b|$

  We have successfully shown that the expression $a + b$ is bounded below by $-(|a| + |b|)$ and bounded
  above by $|a| + |b|$.

  By direct application of the property from the previous problem, this compound inequality implies that the
  absolute value of the middle term is less than or equal to the upper bound $|a + b| <= |a| + |b|$
//92
+ We want to show that $x^2 + x y + y^2 > 0$ when $(x, y) != (0, 0)$. We can break this down into two main
  cases based on whether $x$ and $y$ are equal:

  *Case 1.1:* Suppose $x = y$. Since $x$ and $y$ are both not $0$, we must have $x = y != 0$. Substituting
  $y = x$ into our expression yields $x^2 + x(x) + x^2 = 3 x^2$. Since $x != 0$, its square is strictly
  positive ($x^2 > 0$), so $3 x^2 > 0$.

  *Case 1.2:* Suppose $x != y$. Using the difference of cubes factorization, we can rewrite the expression
  as a rational fraction $x^2 + x y + y^2 = (x^3 - y^3) / (x - y)$

  We evaluate the sign of this fraction by examining the order of $x$ and $y$:
  - If $x > y$, then the denominator is positive ($x - y > 0$). Since the function $f(t) = t^3$ is strictly
    increasing, $x > y$ implies $x^3 > y^3$, so the numerator is also positive ($x^3 - y^3 > 0$). A positive
    number divided by a positive number is strictly positive.
  - If $x < y$, then the denominator is negative ($x - y < 0$). Similarly, $x < y$ implies $x^3 < y^3$, so
    the numerator is also negative ($x^3 - y^3 < 0$). A negative number divided by a negative number is
    strictly positive.

  Therefore, in all scenarios, $x^2 + x y + y^2 > 0$.

  We want to show that $x^4 + x^3 y + x^2 y^2 + x y^3 + y^4 > 0$ when $(x, y) != (0, 0)$. We use the exact
  same two case strategies:

  *Case 2.1:* Suppose $x = y$. Since $x$ and $y$ are both not $0$, we must have $x = y != 0$. Substituting
  $y = x$ into our expression yields $x^4 + x^3(x) + x^2(x^2) + x(x^3) + x^4 = 5 x^4$. Since $x != 0$, its
  fourth power is strictly positive ($x^4 > 0$), so $5 x^4 > 0$.

  *Case 2.2:* Suppose $x != y$. Using the algebraic identity for the difference of fifth powers, we can
  rewrite the polynomial expression as: $x^4 + x^3 y + x^2 y^2 + x y^3 + y^4 = (x^5 - y^5) / (x - y)$

  We evaluate the sign of this fraction by examining the order of $x$ and $y$:
  - If $x > y$, then the denominator is positive ($x - y > 0$). Since the odd power function $f(t) = t^5$ is
    strictly increasing, $x > y$ implies $x^5 > y^5$, making the numerator positive ($x^5 - y^5 > 0$). The
    fraction evaluates to a strictly positive value.
  - If $x < y$, then the denominator is negative ($x - y < 0$). Consequently, $x < y$ implies $x^5 < y^5$,
    making the numerator negative ($x^5 - y^5 < 0$). The division of two negative quantities evaluates to a
    strictly positive value.

  *Aliter:* We want to show that $x^2 + x y + y^2 > 0$ when $(x, y) != (0, 0)$. We can rewrite the expression by
  completing the square with respect to $x$: $x^2 + x y + y^2 = (x + y / 2)^2 + (3 / 4) y^2$

  Since the square of any real number is non-negative, both $(x + y / 2)^2 >= 0$ and $(3 / 4) y^2 >= 0$. We
  evaluate this sum under two possible cases for $y$:

  *Case 1.1:* Suppose $y != 0$. If $y$ is non-zero, then its square is strictly positive, so $(3 / 4) y^2 >
  0$. Adding the non-negative term $(x + y / 2)^2$ ensures the entire expression is strictly positive: $(x +
  y / 2)^2 + (3 / 4) y^2 > 0$

  *Case 1.2:* Suppose $y = 0$. Since $x$ and $y$ are both not $0$, if $y = 0$, then it must follow that $x
  != 0$. Substituting $y = 0$ into our completed square yields $(x + 0)^2 + (3 / 4)(0)^2 = x^2$. Since $x !=
  0$, its square is strictly positive ($x^2 > 0$).

  Therefore, in all scenarios, $x^2 + x y + y^2 > 0$.

  We want to show that $x^4 + x^3 y + x^2 y^2 + x y^3 + y^4 > 0$ when $(x, y) != (0, 0)$. In an elegant
  fashion similar to the first part, we can rewrite this polynomial as a sum of squares $x^4 + x^3 y + x^2
  y^2 + x y^3 + y^4 = (x^2 + 1 / 2 x y)^2 + 3 / 4 y^2 (x + 2 / 3 y)^2 + 2 / 3 y^4$

  Let us expand these terms to verify the identity:
  1. $(x^2 + 1 / 2 x y)^2 = x^4 + x^3 y + 1 / 4 x^2 y^2$
  2. $3 / 4 y^2 (x + 2 / 3 y)^2 = 3 / 4 y^2 (x^2 + 4 / 3 x y + 4 / 9 y^2) = 3 / 4 x^2 y^2 + x y^3 + 1 / 3
     y^4$
  3. $2 / 3 y^4$

  Summing these individual components together gives $x^4 + x^3 y + (1 / 4 + 3 / 4) x^2 y^2 + x y^3 + (1 / 3
  + 2 / 3) y^4 = x^4 + x^3 y + x^2 y^2 + x y^3 + y^4$

  Since every individual component in our rewritten sum is a square or an even power multiplied by a
  positive coefficient, each part is guaranteed to be non-negative. We can evaluate this expression under
  two cases

  *Case 2.1:* Suppose $y != 0$. If $y$ is non-zero, then the third term $2 / 3 y^4$ is strictly positive ($2
   / 3 y^4 > 0$). Since the first two terms are non-negative, adding a strictly positive term ensures that
   the entire sum is strictly positive.

  *Case 2.2:* Suppose $y = 0$. Since both variables cannot be $0$ simultaneously, if $y = 0$, then $x !=
  0$. Substituting $y = 0$ into our sum of squares components leaves only the first term active $(x^2 + 0)^2
  + 0 + 0 = x^4$. Since $x != 0$, its fourth power is strictly positive ($x^4 > 0$).

  Therefore, in all scenarios, $x^4 + x^3 y + x^2 y^2 + x y^3 + y^4 > 0$.
//93
+ We begin with the given equation $(x + y)^2 = x^2 + y^2$

  Expanding the left side using the perfect square trinomial identity gives $x^2 + 2 x y + y^2 = x^2 + y^2$

  Subtracting $x^2 + y^2$ from both sides of the equation simplifies it to $2 x y = 0$

  Dividing both sides by the positive constant $2$ yields $x y = 0$

  According to the zero-product property, the product of two real numbers is zero if and only if at least
  one of the numbers is zero. Therefore $x = 0$ or $y = 0$.

  We begin with the given equation $(x + y)^3 = x^3 + y^3$

  Expanding the left side using the binomial cube identity gives $x^3 + 3 x^2 y + 3 x y^2 + y^3 = x^3 + y^3$

  Subtracting $x^3 + y^3$ from both sides of the equation simplifies it to $3 x^2 y + 3 x y^2 = 0$

  We can factor out the common term $3 x y$ from both terms on the left side $3 x y (x + y) = 0$

  Dividing both sides by the positive constant $3$ yields $x y (x + y) = 0$

  According to the zero-product property, for a product of multiple factors to be equal to zero, at least
  one of the individual factors must equal zero. This provides three separate possibilities
  1. $x = 0$
  2. $y = 0$
  3. $x + y = 0$, which can be rewritten as $x = -y$

  Combining these possibilities, the equation holds true if and only if $x = 0$ or $y = 0$ or $x = -y$.
//94
+ We are given the fact that $x^2 + 2 x y + y^2 = (x + y)^2 >= 0$. We can rewrite our target expression $4
  x^2 + 6 x y + 4 y^2$ to group a multiple of this perfect square expression: $4 x^2 + 6 x y + 4 y^2 = 3
  (x^2 + 2 x y + y^2) + x^2 + y^2$

  Substituting the perfect square identity into the expression yields $3 (x + y)^2 + x^2 + y^2$

  Let us analyze the signs of the components in this rewritten expression:
  1. The first term $3 (x + y)^2$ is a positive constant multiplied by a square, so it is always
     non-negative ($3 (x + y)^2 >= 0$).
  2. The remaining terms $x^2$ and $y^2$ are individual squares of real numbers, meaning $x^2 >= 0$ and $y^2
     >= 0$.

  Since the entire expression is a sum of non-negative terms, the total value can only be equal to zero if
  every individual term is simultaneously equal to zero:
  1. $3 (x + y)^2 = 0 => x + y = 0$
  2. $x^2 = 0 => x = 0$
  3. $y^2 = 0 => y = 0$

  If $x$ and $y$ are both not $0$, then at least one of the squares $x^2$ or $y^2$ must be strictly greater
  than zero ($x^2 > 0$ or $y^2 > 0$). Adding a strictly positive term to the non-negative components ensures
  that the entire sum is strictly positive $3 (x + y)^2 + x^2 + y^2 > 0$

  Therefore, $4 x^2 + 6 x y + 4 y^2 > 0$ holds true unless $x$ and $y$ are both $0$.
//95
+ We begin with the given equation $(x + y)^4 = x^4 + y^4$

  Expanding the left side using the binomial expansion formula for a fourth power gives $x^4 + 4 x^3 y + 6
  x^2 y^2 + 4 x y^3 + y^4 = x^4 + y^4$

  Subtracting $x^4 + y^4$ from both sides of the equation simplifies it to $4 x^3 y + 6 x^2 y^2 + 4 x y^3 =
  0$

  We can factor out the common term $x y$ from all three terms on the left side $x y (4 x^2 + 6 x y + 4 y^2)
  = 0$

  According to the zero-product property, this product can only equal zero if at least one of the main
  factors equals zero. This leaves us with two possibilities:
  1. $x y = 0$
  2. $4 x^2 + 6 x y + 4 y^2 = 0$

  Let us analyze these two possibilities:
  - From the first factor, $x y = 0$ directly implies that $x = 0$ or $y = 0$.
  - From the second factor, we have $4 x^2 + 6 x y + 4 y^2 = 0$. As proven in the previous problem, the
    expression $4 x^2 + 6 x y + 4 y^2$ is strictly positive ($> 0$) for all real numbers unless $x$ and $y$
    are both $0$. Therefore, the only solution generated by this second factor is $x = 0$ and $y = 0$.

  Since the condition $x = 0$ and $y = 0$ is already covered by the broader statement $x = 0$ or $y = 0$,
  the second factor provides no additional solutions.
//96
+ We begin with the given equation $(x + y)^5 = x^5 + y^5$

  Expanding the left side using the binomial theorem for a fifth power gives $x^5 + 5 x^4 y + 10 x^3 y^2 +
  10 x^2 y^3 + 5 x y^4 + y^5 = x^5 + y^5$

  Subtracting $x^5 + y^5$ from both sides of the equation simplifies it to $5 x^4 y + 10 x^3 y^2 + 10 x^2
  y^3 + 5 x y^4 = 0$

  We can factor out the common term $5 x y$ from all four remaining terms on the left side $5 x y (x^3 + 2
  x^2 y + 2 x y^2 + y^3) = 0$

  Next, let us factor the cubic expression inside the parentheses. We can group the terms by combining $x^3
  + y^3$ and $2 x^2 y + 2 x y^2$: $x^3 + y^3 + 2 x^2 y + 2 x y^2 = 0$

  Using the sum of cubes factorization on the first part and factoring out $2 x y$ from the second part
  yields $(x + y)(x^2 - x y + y^2) + 2 x y (x + y) = 0$

  Now, we can factor out the common binomial term $(x + y)$: $(x + y)(x^2 - x y + y^2 + 2 x y) = 0 => (x +
  y)(x^2 + x y + y^2) = 0$

  Substituting this back into our full factored equation gives $5 x y (x + y)(x^2 + x y + y^2) = 0$

  According to the zero-product property, this equation is satisfied if and only if at least one of the
  individual factors equals zero:
  1. $x = 0$
  2. $y = 0$
  3. $x + y = 0 => x = -y$
  4. $x^2 + x y + y^2 = 0$

  As established in previous problems, the quadratic form $x^2 + x y + y^2$ is strictly positive ($> 0$) for
  all real numbers unless $x = 0$ and $y = 0$. Therefore, this fourth factor provides no new solutions since
  the origin $(0, 0)$ is already fully covered by the conditions $x = 0$ or $y = 0$.
//97
+ First, we factor out the leading coefficient $2$ from the first two terms $2(x^2 - 3 / 2 x) + 4$

  To complete the square inside the parentheses, we take half of the coefficient of $x$, which is $-3 / 4$,
  and square it to get $9 / 16$. We add and subtract this value inside the expression $2(x^2 - 3 / 2 x + 9 /
  16 - 9 / 16) + 4$

  Now, we separate the perfect square trinomial and distribute the leading coefficient $2$ to the remaining
  constant $2(x - 3 / 4)^2 - 2(9 / 16) + 4 => 2(x - 3 / 4)^2 - 9 / 8 + 4$

  Converting $4$ to a fraction with a common denominator of $8$ gives $32 / 8$. Combining the constant terms
  yields $2(x - 3 / 4)^2 - 9 / 8 + 32 / 8 => 2(x - 3 / 4)^2 + 23 / 8$

  For any real number $x$, the squared term $(x - 3 / 4)^2$ is always non-negative $(x - 3 / 4)^2 >= 0$

  Multiplying by the positive number $2$ preserves the inequality $2(x - 3 / 4)^2 >= 0$

  Adding $23 / 8$ to both sides gives $2(x - 3 / 4)^2 + 23 / 8 >= 23 / 8$

  Therefore, the smallest possible value of the expression is $23 / 8$.
//98
+ To find the smallest possible value of the multi-variable quadratic expression, we can group the terms by
  variable and complete the square for $x$ and $y$ independently. Because the leading coefficients for both
  $x^2$ and $y^2$ are positive ($1 > 0$ and $2 > 0$), the expression has a unique absolute minimum value at
  its vertex point.

  First, let us group the terms containing $x$ and the terms containing $y$: $(x^2 - 3 x) + (2 y^2 + 4 y) +
  2$

  For the $y$ terms, we factor out the leading coefficient $2$: $(x^2 - 3 x) + 2 (y^2 + 2 y) + 2$

  Now, we complete the square for each grouped expression:
  1. For the $x$ expression $x^2 - 3 x$, we take half of the coefficient of $x$, which is $-3 / 2$, and
     square it to get $9 / 4$. We add and subtract $9 / 4$ inside the expression:
     $x^2 - 3 x + 9 / 4 - 9 / 4 = (x - 3 / 2)^2 - 9 / 4$

  2. For the $y$ expression inside the parentheses $y^2 + 2 y$, we take half of the coefficient of $y$,
     which is $1$, and square it to get $1$. We add and subtract $1$ inside the parentheses:
     $2 (y^2 + 2 y + 1 - 1) = 2 (y + 1)^2 - 2$

  Substituting these completed square forms back into the full expression yields $(x - 3 / 2)^2 - 9 / 4 + 2
  (y + 1)^2 - 2 + 2$

  Simplifying the constant terms gives $(x - 3 / 2)^2 + 2 (y + 1)^2 - 9 / 4$

  For all real numbers $x$ and $y$, the squared terms are always non-negative $(x - 3 / 2)^2 >= 0$ and $2 (y
  + 1)^2 >= 0$

  Summing these inequalities together shows that $(x - 3 / 2)^2 + 2 (y + 1)^2 >= 0$

  Subtracting $9 / 4$ from both sides gives the lower bound for the entire expression $(x - 3 / 2)^2 + 2 (y
  + 1)^2 - 9 / 4 >= -9 / 4$

  The expression reaches its absolute minimum value when both independent squared terms are simultaneously
  equal to zero. This occurs exactly when $x = 3 / 2$ and $y = -1$. At this specific coordinate, the minimal
  value is the remaining constant term.

  Therefore, the smallest possible value of the expression is $-9 / 4$.
//99
+ To find the smallest possible value of this multi-variable quadratic expression containing a cross term $4
  x y$, we can complete the square by first grouping the terms involving $x$.

  Let us group the expression as a quadratic in terms of $x$: $x^2 + (4 y - 4) x + (5 y^2 - 6 y + 7)$

  To complete the square for the $x$ terms, we take half of the coefficient of $x$, which is $(4 y - 4) / 2
  = 2 y - 2$, and square it $(2 y - 2)^2 = 4 y^2 - 8 y + 4$

  We add and subtract this squared expression inside our equation $(x^2 + (4 y - 4) x + (4 y^2 - 8 y + 4)) -
  (4 y^2 - 8 y + 4) + 5 y^2 - 6 y + 7$

  We can rewrite the first grouped part as a perfect square trinomial $(x + (2 y - 2))^2 - 4 y^2 + 8 y - 4 +
  5 y^2 - 6 y + 7$

  Combining the remaining like terms outside the parentheses gives $(x + 2 y - 2)^2 + y^2 + 2 y + 3$

  Now, we complete the square for the remaining expression in terms of $y$. For $y^2 + 2 y$, we add and
  subtract $1$: $y^2 + 2 y + 1 - 1 + 3 = (y + 1)^2 + 2$

  Substituting this back into the full expression yields the final form as a sum of squares plus a constant
  $(x + 2 y - 2)^2 + (y + 1)^2 + 2$

  For all real numbers $x$ and $y$, the squared terms are always non-negative: $(x + 2 y - 2)^2 >= 0$ and
  $(y + 1)^2 >= 0$

  Summing these inequalities together shows that $(x + 2 y - 2)^2 + (y + 1)^2 >= 0$

  Adding $2$ to both sides gives the lower bound for the entire expression $(x + 2 y - 2)^2 + (y + 1)^2 + 2 >= 2$

  The expression reaches its absolute minimum value when both independent squared terms are simultaneously
  equal to zero. This requires:
  1. $y + 1 = 0 => y = -1$
  2. $x + 2 y - 2 = 0 => x + 2(-1) - 2 = 0 => x - 4 = 0 => x = 4$

  At the coordinate point $(4, -1)$, both squares disappear, leaving the absolute minimum value.

  Therefore, the smallest possible value of the expression is $2$.
//100
+ We can prove this by directly substituting the two expressions into the left side of the equation $x^2 + b
  x + c$ and verifying that it evaluates to zero. Let the given numbers be $x_1$ and $x_2$.

  *Substitution of $x_1$:*

  Let $x = (-b + sqrt(b^2 - 4 c))/2$. Substituting this into $x^2 + b x + c$ gives: $((-b + sqrt(b^2 - 4
  c))/2)^2 + b((-b + sqrt(b^2 - 4 c))/2) + c$

  Let us evaluate each term separately:
  1. For the first term, squaring the numerator and denominator yields:
     $((-b + sqrt(b^2 - 4 c))^2)/4 = (b^2 - 2 b sqrt(b^2 - 4 c) + (b^2 - 4 c))/4 = (2 b^2 - 4 c - 2 b
     sqrt(b^2 - 4 c))/4 = (b^2 - 2 c - b sqrt(b^2 - 4 c))/2$

  2. For the second term, distributing $b$ across the numerator yields $(-b^2 + b sqrt(b^2 - 4 c))/2$

  Now, we combine the first term, the second term, and $c$ over a common denominator of $2$: $(b^2 - 2 c - b
  sqrt(b^2 - 4 c))/2 + (-b^2 + b sqrt(b^2 - 4 c))/2 + (2 c)/2$

  Summing the numerators together over the single denominator gives $(b^2 - 2 c - b sqrt(b^2 - 4 c) - b^2 +
  b sqrt(b^2 - 4 c) + 2 c)/2$

  Grouping like terms in the numerator shows that everything cancels out $((b^2 - b^2) + (2 c - 2 c) + (-b
  sqrt(b^2 - 4 c) + b sqrt(b^2 - 4 c)))/2 = 0 / 2 = 0$

  Thus, $x_1$ satisfies the equation.

  *Substitution of $x_2$:*

  Let $x = (-b - sqrt(b^2 - 4 c))/2$. Substituting this into $x^2 + b x + c$ gives $((-b - sqrt(b^2 - 4
  c))/2)^2 + b((-b - sqrt(b^2 - 4 c))/2) + c$

  Let us evaluate each term separately:
  1. For the first term, squaring the numerator and denominator yields $((-b - sqrt(b^2 - 4 c))^2)/4 = (b^2
     + 2 b sqrt(b^2 - 4 c) + (b^2 - 4 c))/4 = (2 b^2 - 4 c + 2 b sqrt(b^2 - 4 c))/4 = (b^2 - 2 c + b sqrt(b^2 -
     4 c))/2$

  2. For the second term, distributing $b$ across the numerator yields $(-b^2 - b sqrt(b^2 - 4 c))/2$

  Now, we combine the first term, the second term, and $c$ over a common denominator of $2$: $(b^2 - 2 c + b
  sqrt(b^2 - 4 c))/2 + (-b^2 - b sqrt(b^2 - 4 c))/2 + (2 c)/2$

  Summing the numerators together over the single denominator gives $(b^2 - 2 c + b sqrt(b^2 - 4 c) - b^2 -
  b sqrt(b^2 - 4 c) + 2 c)/2$

  Grouping like terms in the numerator shows that everything cancels out $((b^2 - b^2) + (2 c - 2 c) + (b
  sqrt(b^2 - 4 c) - b sqrt(b^2 - 4 c)))/2 = 0 / 2 = 0$

  Thus, $x_2$ also satisfies the equation.
//101
+ We are given that the discriminant is strictly negative, meaning $b^2 - 4 c < 0$. We can rewrite this
  inequality by adding $4 c$ to both sides and dividing by $4$, which yields $c > b^2 / 4$

  Now, let us analyze the quadratic expression $x^2 + b x + c$ by completing the square with respect to $x$.

  To complete the square for $x^2 + b x$, we take half of the coefficient of $x$, which is $b / 2$, and
  square it to get $b^2 / 4$. We add and subtract this value inside the expression $x^2 + b x + b^2 / 4 -
  b^2 / 4 + c$

  We can rewrite the first three terms as a perfect square trinomial $(x + b / 2)^2 + c - b^2 / 4$

  Let us analyze the two separate parts of this rewritten expression:
  1. For any real number $x$, the squared term $(x + b / 2)^2$ is always non-negative $(x + b / 2)^2 >= 0$

  2. For the constant remainder term $c - b^2 / 4$, we can use our initial condition $c > b^2 /
     4$. Subtracting $b^2 / 4$ from both sides of this inequality shows that the remainder is strictly
     positive $c - b^2 / 4 > 0$

  When we add a strictly positive real number to a non-negative real number, the resulting sum is guaranteed
  to be strictly positive. Therefore, for all real numbers $x$: $(x + b / 2)^2 + c - b^2 / 4 > 0$

  Substituting back the original polynomial form gives $x^2 + b x + c > 0$

  Since $x^2 + b x + c$ is strictly greater than zero for every real number $x$, it can never equal
  zero. Consequently, there are no real numbers $x$ that satisfy the equation $x^2 + b x + c = 0$.
//102
+ We want to show that $x^2 + x y + y^2 > 0$ when $(x, y) != (0, 0)$. We can evaluate this by checking two
  main cases based on whether $y$ is equal to $0$:

  *Case 1:* Suppose $y = 0$. Since $x$ and $y$ are both not $0$, if $y = 0$, then it must follow that $x !=
  0$. Substituting $y = 0$ into our expression yields $x^2 + x(0) + 0^2 = x^2$

  Since $x != 0$, its square is strictly positive ($x^2 > 0$), satisfying the theorem.

  *Case 2:* Suppose $y != 0$. Since $y$ is non-zero, we can factor out $y^2$ from the entire expression $x^2
   + x y + y^2 = y^2 (x^2 / y^2 + x / y + 1)$

  Let $u = x / y$. Substituting this variable into the expression inside the parentheses gives the quadratic
  form $u^2 + u + 1$

  This expression fits the general quadratic form $u^2 + b u + c$, where $b = 1$ and $c = 1$. Let us
  calculate the discriminant $b^2 - 4 c$ for this quadratic $b^2 - 4 c = 1^2 - 4(1)(1) = 1 - 4 = -3$

  Since the discriminant is strictly negative ($-3 < 0$), we can directly apply the theorem proven in the
  previous problem. The previous problem established that if $b^2 - 4 c < 0$, then the quadratic expression
  is strictly positive for all real values of the variable. Therefore $u^2 + u + 1 > 0$ for all real numbers
  $u$

  Substituting $u = x / y$ back into the inequality gives $x^2 / y^2 + x / y + 1 > 0$

  Since $y != 0$, its square is strictly positive ($y^2 > 0$). Multiplying a strict inequality by a strictly
  positive number preserves the direction of the inequality sign. Multiplying both sides by $y^2$ yields
  $y^2 (x^2 / y^2 + x / y + 1) > y^2 (0) => x^2 + x y + y^2 > 0$

  In both possible cases, the expression is strictly positive.
//103
+ We want to find all real numbers $alpha$ such that the quadratic form $x^2 + alpha x y + y^2 > 0$ for all
  $(x, y) != (0, 0)$. We can evaluate this by checking two main cases based on whether $y$ is equal to $0$:

  *Case 1:* Suppose $y = 0$. If $y = 0$, then since $x$ and $y$ are both not $0$, we must have $x !=
  0$. Substituting $y = 0$ into the inequality yields $x^2 + alpha x(0) + 0^2 = x^2$

  Since $x != 0$, its square is strictly positive ($x^2 > 0$). This holds true regardless of the value of
  $alpha$.

  *Case 2:* Suppose $y != 0$. Since $y$ is non-zero, its square is strictly positive ($y^2 > 0$). We can
   factor out $y^2$ from the entire expression $x^2 + alpha x y + y^2 = y^2 (x^2 / y^2 + alpha x / y + 1)$

  Let $u = x / y$. Substituting this variable into the expression inside the parentheses gives the quadratic
  polynomial $u^2 + alpha u + 1$

  For the original expression to be strictly positive for all non-zero pairs, this quadratic polynomial must
  be strictly positive ($> 0$) for all real numbers $u$.

  Using the theorem from the previous discriminant problems, a quadratic polynomial of the form $A u^2 + B u
  + C$ with a positive leading coefficient ($A = 1 > 0$) is strictly positive for all real inputs if and
  only if its discriminant $Delta = B^2 - 4 A C$ is strictly negative $Delta = alpha^2 - 4(1)(1) < 0 =>
  alpha^2 - 4 < 0 => alpha^2 < 4$

  Taking the square root of both sides using absolute values yields $|alpha| < 2$

  Which can be written as the open interval $-2 < alpha < 2$.
//104
+ To find the smallest possible value for each quadratic expression, we complete the square. Since the
  leading coefficients ($1$ and $a$) are positive, both parabolas open upwards, meaning their vertices
  represent their absolute minimum values.

  We begin by taking half of the linear coefficient, which is $b / 2$, squaring it to get $b^2 / 4$, and
  then adding and subtracting this value inside the expression $x^2 + b x + b^2 / 4 - b^2 / 4 + c$

  Grouping the first three terms into a perfect square trinomial yields $(x + b / 2)^2 + c - b^2 / 4$

  For any real number $x$, the squared term $(x + b / 2)^2$ is always non-negative $(x + b / 2)^2 >= 0$

  Adding the constant remainder to both sides gives the lower bound for the entire expression $(x + b / 2)^2
  + c - b^2 / 4 >= c - b^2 / 4$

  The expression achieves its absolute minimum when the squared term is exactly zero, which occurs at $x =
  -b / 2$. At this point, the remaining constant value is $c - b^2 / 4$

  First, we factor out the leading coefficient $a$ from the terms containing the variable $x$:
  $a (x^2 + b / a x) + c$

  To complete the square inside the parentheses, we take half of the coefficient of $x$, which is $b / (2
  a)$, square it to get $b^2 / (4 a^2)$, and then add and subtract this value $a (x^2 + b / a x + b^2 / (4
  a^2) - b^2 / (4 a^2)) + c$

  We separate the perfect square trinomial and distribute $a$ to the remaining negative fraction $a (x + b /
  (2 a))^2 - a (b^2 / (4 a^2)) + c => a (x + b / (2 a))^2 - b^2 / (4 a) + c$

  Rearranging the constant terms gives the standard vertex form $a (x + b / (2 a))^2 + c - b^2 / (4 a)$

  Since $a > 0$ and the squared term is always non-negative, the entire grouped term is non-negative $a (x +
  b / (2 a))^2 >= 0$

  Adding the constant remainder to both sides gives the lower bound for the full expression $a (x + b / (2
  a))^2 + c - b^2 / (4 a) >= c - b^2 / (4 a)$

  The expression reaches its absolute minimum when the squared term equals zero, which occurs at $x = -b /
  (2 a)$. At this vertex point, the minimal value is the remaining constant term.
//105
+ We will evaluate the inequality by breaking the proof into three parts as outlined in the problem
  statement.

  *Part 1:* Prove equality holds if $x_1 = lambda y_1$ and $x_2 = lambda y_2$ for some $lambda >= 0$.

  Suppose there exists a non-negative number $lambda$ such that $x_1 = lambda y_1$ and $x_2 = lambda
  y_2$. Let us substitute these expressions into both sides of the Schwarz inequality:

 *Left side:* $(x_1 y_1 + x_2 y_2)^2 = (lambda y_1^2 + lambda y_2^2)^2 = (lambda (y_1^2 + y_2^2))^2 =
  lambda^2 (y_1^2 + y_2^2)^2$

  *Right side:* $(x_1^2 + x_2^2)(y_1^2 + y_2^2) = ((lambda y_1)^2 + (lambda y_2)^2)(y_1^2 + y_2^2) =
   (lambda^2 y_1^2 + lambda^2 y_2^2)(y_1^2 + y_2^2) = lambda^2 (y_1^2 + y_2^2)(y_1^2 + y_2^2) = lambda^2
   (y_1^2 + y_2^2)^2$

  Since both sides simplify to the exact same expression, equality holds true.

  *Part 2:* Prove equality holds if $y_1 = y_2 = 0$.

  Suppose that $y_1 = 0$ and $y_2 = 0$. Substituting these values directly into both sides yields:

  *Left side:* $(x_1(0) + x_2(0))^2 = 0^2 = 0$

  *Right side:* $(x_1^2 + x_2^2)(0^2 + 0^2) = (x_1^2 + x_2^2)(0) = 0$

  Since both sides evaluate to $0$, equality holds true.

  *Part 3:* Complete the proof when there is no such $lambda$.

  Now suppose that $y_1$ and $y_2$ are not both $0$, and that there is no real number $lambda$ such that
  $x_1 = lambda y_1$ and $x_2 = lambda y_2$.

  Because no such $lambda$ exists, the quantities $(lambda y_1 - x_1)$ and $(lambda y_2 - x_2)$ cannot be
  simultaneously zero for any choice of $lambda$. Since the sum of squares of real numbers is strictly
  positive unless all terms are zero, we have the strict inequality for all real numbers $lambda$:
  $0 < (lambda y_1 - x_1)^2 + (lambda y_2 - x_2)^2$

  Expanding both squares on the right side yields:
  $0 < (lambda^2 y_1^2 - 2 lambda x_1 y_1 + x_1^2) + (lambda^2 y_2^2 - 2 lambda x_2 y_2 + x_2^2)$

  Grouping by powers of $lambda$ gives the quadratic polynomial in terms of $lambda$:
  $(y_1^2 + y_2^2) lambda^2 - 2 (x_1 y_1 + x_2 y_2) lambda + (x_1^2 + x_2^2) > 0$

  This expression fits the general quadratic form $A lambda^2 + B lambda + C > 0$, where:
  - $A = y_1^2 + y_2^2$
  - $B = -2 (x_1 y_1 + x_2 y_2)$
  - $C = x_1^2 + x_2^2$

  Since $y_1$ and $y_2$ are not both $0$, the leading coefficient is strictly positive ($A > 0$). From our
  previous problems, we proved that a quadratic polynomial $A lambda^2 + B lambda + C$ is strictly positive
  for all real inputs if and only if its discriminant $Delta = B^2 - 4 A C$ is strictly negative ($Delta <
  0$).

  Let us compute and bound the discriminant $B^2 - 4 A C < 0 => (-2(x_1 y_1 + x_2 y_2))^2 - 4(y_1^2 +
  y_2^2)(x_1^2 + x_2^2) < 0 => 4(x_1 y_1 + x_2 y_2)^2 - 4(y_1^2 + y_2^2)(x_1^2 + x_2^2) < 0$

  Dividing the entire inequality by the positive constant $4$ yields $(x_1 y_1 + x_2 y_2)^2 - (y_1^2 +
  y_2^2)(x_1^2 + x_2^2) < 0$

  Adding $(y_1^2 + y_2^2)(x_1^2 + x_2^2)$ to both sides gives the strict Schwarz inequality $(x_1 y_1 + x_2
  y_2)^2 < (x_1^2 + x_2^2)(y_1^2 + y_2^2)$

  Combining the strict inequality from Part 3 with the equality cases from Part 1 and Part 2, we establish
  that the inequality holds for all real inputs $(x_1 y_1 + x_2 y_2)^2 <= (x_1^2 + x_2^2)(y_1^2 + y_2^2)$.
//106
+ Let us first consider the cases where either $x_1^2 + x_2^2 = 0$ or $y_1^2 + y_2^2 = 0$. If either sum of
  squares is $0$, then the corresponding variables must be $0$ ($x_1 = x_2 = 0$ or $y_1 = y_2 = 0$). In this
  scenario, both sides of the inequality evaluate to $0$, and the relation holds as an equality ($0 <= 0$).

  Now, we assume that $x_1^2 + x_2^2 > 0$ and $y_1^2 + y_2^2 > 0$. We are given the basic algebraic
  inequality $2 x y <= x^2 + y^2$

  We apply this property by substituting the normalized variables. Let $x_i = (|x_i|)/ sqrt(x_1^2 + x_2^2)$
  and $y_i = (|y_i|)/ sqrt(y_1^2 + y_2^2)$

  *Step 1:* Apply the inequality for $i = 1$

  Substituting these values into $2 x y <= x^2 + y^2$ for $i = 1$ yields $2 ((|x_1|)/ sqrt(x_1^2 + x_2^2) )
  ((|y_1|)/ sqrt(y_1^2 + y_2^2) ) <= ((|x_1|)/ sqrt(x_1^2 + x_2^2) )^2 + ((|y_1|)/ sqrt(y_1^2 + y_2^2) )^2$

  Simplifying the squared terms gives $(2 |x_1 y_1|) / (sqrt(x_1^2 + x_2^2) sqrt(y_1^2 + y_2^2)) <= x_1^2 /
  (x_1^2 + x_2^2) + y_1^2 / (y_1^2 + y_2^2)$

  *Step 2:* Apply the inequality for $i = 2$

  Similarly, substituting these values into $2 x y <= x^2 + y^2$ for $i = 2$ yields $2 ((|x_2|)/ sqrt(x_1^2
  + x_2^2) ) ((|y_2|)/ sqrt(y_1^2 + y_2^2) ) <= ((|x_2|)/ sqrt(x_1^2 + x_2^2) )^2 + ((|y_2|)/ sqrt(y_1^2 +
  y_2^2) )^2$

  Simplifying the squared terms gives: $(2 |x_2 y_2|) / (sqrt(x_1^2 + x_2^2) sqrt(y_1^2 + y_2^2)) <= x_2^2 /
  (x_1^2 + x_2^2) + y_2^2 / (y_1^2 + y_2^2)$

  *Step 3:* Add the two inequalities together

  Since the inequality signs face the same direction, we can add the expressions side-by-side $(2 |x_1 y_1|
  + 2 |x_2 y_2|) / (sqrt(x_1^2 + x_2^2) sqrt(y_1^2 + y_2^2)) <= (x_1^2 + x_2^2) / (x_1^2 + x_2^2) + (y_1^2 +
  y_2^2) / (y_1^2 + y_2^2)$

  Simplifying the fractions on the right side yields $(2 ( |x_1 y_1| + |x_2 y_2| )) / (sqrt(x_1^2 + x_2^2)
  sqrt(y_1^2 + y_2^2)) <= 1 + 1 => (2 ( |x_1 y_1| + |x_2 y_2| )) / (sqrt(x_1^2 + x_2^2) sqrt(y_1^2 + y_2^2))
  <= 2$

  Dividing both sides of the inequality by the positive constant $2$ gives $(|x_1 y_1| + |x_2 y_2|) /
  (sqrt(x_1^2 + x_2^2) sqrt(y_1^2 + y_2^2)) <= 1$

  Multiplying both sides by the positive denominator preserves the inequality $|x_1 y_1| + |x_2 y_2| <=
  sqrt(x_1^2 + x_2^2) sqrt(y_1^2 + y_2^2)$

  By the triangle inequality for absolute values, we know that $|x_1 y_1 + x_2 y_2| <= |x_1 y_1| + |x_2
  y_2|$. Combining this with our result using the transitive property gives $|x_1 y_1 + x_2 y_2| <=
  sqrt(x_1^2 + x_2^2) sqrt(y_1^2 + y_2^2)$

  Squaring both sides of this inequality yields the standard form $(x_1 y_1 + x_2 y_2)^2 <= (x_1^2 +
  x_2^2)(y_1^2 + y_2^2)$.
//107
+ For all real numbers $x_1$, $x_2$, $y_1$, and $y_2$, the Schwarz inequality holds $(x_1 y_1 + x_2 y_2)^2 = 0$

  Adding $(x_1 y_1 + x_2 y_2)^2$ to both sides of this inequality yields $(x_1 y_1 + x_2 y_2)^2 + (x_1 y_2 -
  x_2 y_1)^2 >= (x_1 y_1 + x_2 y_2)^2$

  Which can be written as $(x_1 y_1 + x_2 y_2)^2 <= (x_1 y_1 + x_2 y_2)^2 + (x_1 y_2 - x_2 y_1)^2$

  By substituting the left side of Lagrange's identity from Step 1 into the right side of this inequality,
  we obtain the final desired result $(x_1 y_1 + x_2 y_2)^2 <= (x_1^2 + x_2^2)(y_1^2 + y_2^2)$.
//108
+ We can deduce the strict conditions for equality by analyzing the structures established in the previous
  three proofs.

  *Deduction 1:* From Lagrange's Identity. In the final proof, we established Lagrange's identity $(x_1^2 +
   x_2^2)(y_1^2 + y_2^2) = (x_1 y_1 + x_2 y_2)^2 + (x_1 y_2 - x_2 y_1)^2$

  For the Schwarz inequality to hold as a strict equality, the final term in Lagrange's identity must
  vanish: $(x_1 y_2 - x_2 y_1)^2 = 0 => x_1 y_2 - x_2 y_1 = 0 => x_1 y_2 = x_2 y_1$

  *Deduction 2:* From the Discriminant Method. In the first method, we evaluated the quadratic function in
  terms of a variable $lambda$: $f(lambda) = (lambda y_1 - x_1)^2 + (lambda y_2 - x_2)^2 = (y_1^2 + y_2^2)
  lambda^2 - 2 (x_1 y_1 + x_2 y_2) lambda + (x_1^2 + x_2^2)$

  We showed that the discriminant $Delta$ of this quadratic satisfies $Delta = 0$ exactly when the Schwarz
  inequality holds as an equality. A discriminant of zero means the quadratic equation $f(lambda) = 0$ has
  exactly one real solution for $lambda$. For the sum of squares $f(lambda)$ to equal zero, both components
  must disappear simultaneously:  $lambda y_1 - x_1 = 0 => x_1 = lambda y_1$ and $lambda y_2 - x_2 = 0 =>
  x_2 = lambda y_2$

  If $y_1$ and $y_2$ are not both $0$, this unique real root $lambda$ defines the exact proportional
  relationship between the variables.

  *Deduction 3:* Evaluating the Sign of $lambda$

  From the normalization method, we utilized the inequality $2 u v <= u^2 + v^2$. This basic algebraic
  property holds as a strict equality if and only if $u = v$. In our application, this required: $(|x_1|)/
  sqrt(x_1^2 + x_2^2) = (|y_1|)/ sqrt(y_1^2 + y_2^2)$ and $(|x_2|)/ sqrt(x_1^2 + x_2^2) = (|y_2|)/sqrt(y_1^2
  + y_2^2)$

  This confirms that the magnitudes of the components must be directly proportional by a non-negative scalar
  ratio, $lambda = sqrt(x_1^2 + x_2^2) / sqrt(y_1^2 + y_2^2) >= 0$. Furthermore, adding the absolute values
  together matched the square of the sum ($|x_1 y_1 + x_2 y_2| = |x_1 y_1| + |x_2 y_2|$) if and only if $x_1
  y_1$ and $x_2 y_2$ have the same sign configuration, matching the sign configuration dictated by a
  positive multiplier $lambda >= 0$.

  If $y_1 = y_2 = 0$, both sides trivially evaluate to zero, satisfying equality without requiring a scalar
  relationship.
