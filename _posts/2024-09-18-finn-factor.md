---
title: "Teensy Problems: Finn Factor"
date: 2024-09-18
categories:
  - teensy-problems
tags:
  - math
  - problem
---

Finn Factor just learned about a neat way to compute the prime numbers. Let $S$ be the list of known primes (initially empty), and start at $n = 2$. For each $n$, we ask if it is divisible by any elements of $S$. If it isn't, we add it to $S$; otherwise, $n$ is composite. We increment $n$ and continue, which will place into $S$ every prime up until wherever we decide to stop.

Finn thinks this process could be made more efficient. He noticed that, for some primes, you only need to check divisibility by a subset of $S$ to be able to find the next prime. For example, to find the next prime after 7, you only need to know that 2 and 3 are prime: 8 and 10 are even, and 9 is divisible by 3, so the next prime is 11.

Let $S(p)$ be the smallest subset of primes less than or equal to $p$ which will correctly identify the next prime after $p$. If there's a tie, we will choose the subset with the smallest elements. For example, $S(7) = \\{2, 3\\}$ as we saw above.

1. Provide the "best" bound for $\max S(p)$ in terms of $p$.
2. Prove that $\limsup \vert S(p) \vert$ is infinite.
3. Is it true that $\liminf \vert S(p) \vert$ exists? What would it mean for the $\liminf$ to equal 1?
