#import "/content/blog.typ": *
#show: main.with(
  title: "KG's Teensy Math Problems: Finn Factor",
  desc: "A hard problem about primes",
  date: "2024-09-18",
  tags: (
    "teensy-problems",
  ),
  show-outline: true,
)

== Problem

Finn Factor just learned about a neat way to compute the prime numbers. Let $S$ be the list of known primes (initially empty), and start at $n = 2$. For each $n$, we ask if it is divisible by any elements of $S$. If it isn't, we add it to $S$; otherwise, $n$ is composite. We increment $n$ and continue, which will place into $S$ every prime up until wherever we decide to stop.

Finn thinks this process could be made more efficient. He noticed that, for some primes, you only need to check divisibility by a subset of $S$ to be able to find the next prime. For example, to find the next prime after $7$, you only need to know that $2$ and $3$ are prime: $8$ and $10$ are even, and $9$ is divisible by $3$, so the next prime is $11$.

Let $S(p)$ be the smallest subset of primes less than or equal to $p$ which will correctly identify the next prime after $p$. If there's a tie, we will choose the subset with the smallest elements. For example, $S(7) = {2, 3}$ as we saw above.

1. Provide the "best" bound for $max S(p)$ in terms of p.
2. Prove that $lim sup abs(S(p))$ is infinite.
3. Is it true that $lim inf abs(S(p))$ exists? What would it mean for the $lim inf$ to equal $1$?


== Solution

1. This ended up being a sneakier question than I expected. The largest value you'd need to check to find a divisor of any $n$ is $sqrt(n)$, but given our definition of $S(p)$, the consequent bound would be $sqrt(q)$ for $q$ the prime _after_ $p$. And $q$ might be quite a bit bigger than $p$! While prime gaps are quite a tricky subject (as the next two parts will discuss), the best you can do is still $O(sqrt(p))$: the simplest such bound is $sqrt(2p)$, which follows from Bertrand's postulate that there is always a prime between $n$ and $2n$. Thinking additively, the $n$th prime gap is a little bit more than $log(n)$ in general, so we're looking at $sqrt(p) * (1 + o(1))$. You can also convince yourself you can't really do better than this: $S(23) = {2, 3, 5}$ thanks to $25 = 5^2$.

2. This follows from the same proof that there are arbitrarily large prime gaps: the numbers from $n! + 1$ to $n! + n$ are all composite, and for the purposes of this problem we see that the smallest prime dividing $n! + q$ is $q$ for any prime $q <= n$. Thus, if $x$ is the largest prime $<= n! + 1$, and $y$ is the following prime, which is $>= n! + n + 1$, $S(x)$ contains every prime $<= n$. Since there are infinitely many primes, $abs(S(x))$ is unbounded from above.

3. This is true! Like the previous part, this follows from examining prime gaps, but in this case, small ones. Yitang Zhang showed there are infinitely many prime gaps at most $70,000,000$, which was subsequently refined by the PolyMath project to an unconditional bound of $246$ (and a conditional bound of $12$). This means we can always find a prime $x$ such that $x + 246$ is also prime, wherein $abs(S(x))$ is itself at most $246$ (though you can probably convince yourself it should be quite a bit smaller: $approx 53$, the number of primes less than $246$). The $lim inf$ being $1$ would mean $S(x) = {2}$ infinitely often, which is equivalent to the twin prime conjecture.
