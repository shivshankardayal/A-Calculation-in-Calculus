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
