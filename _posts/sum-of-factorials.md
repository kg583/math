---
title: 'KG's Teensy Math Problems: Sum of Factorials'
date: 2025-03-13
permalink: /posts/sum-of-factorials
tags:
  - teensy-problems
---

Let $\mathrm{sf}(n)$ be the *sum-of-factorials* function: $0! + 1! + ... n!$. Its first few values are $1$, $2$, $4$, $10$, $34$, ....

1. Show that, for any $d > 0$, there exists some $N > 0$ such that the last $d$ decimal digits of $\mathrm{sf}(n)$ are the same for all $n > N$. In this way, we can define the "limit" $L$ of $\mathrm{sf}(n)$ as the unique "infinite number" whose last $d$ digits match $\mathrm{sf}(n)$ for all $n > N$.

2. Show that $\mathrm{sf}(5d-3)$ gives you $d$ correct digits of $L$. *(Hint: It's easy to show that $\mathrm{sf}(5d-1)$ works. How can you drop down to $5d-3$?)*

3. Compute the last 99 decimal digits of $L$.

4. Does $L$ exist in every base?

5. Let $\{a_n\}$ be a sequence of integers. Define the *convolution* $\mathrm{sf}^\ast(n) = a_0 \times 0! + a_1 \times 1! + ... + a_n \times n!$. Show that $L^\ast$, the "limit" of $\mathrm{sf}^\ast(n)$, exists for any choice of $\{a_n\}$.

6. Show that $79$ is not the last two digits of any $L^\ast$ with $\{a_n\}$ a sequence of $0$'s and $1$'s. (That is, we may freely remove certain factorials from our sum.) What other numbers have this property?
