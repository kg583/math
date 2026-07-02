---
title: "Teensy Problems: Counting Carol"
date: 2024-10-04
categories:
  - teensy-problems
tags:
  - math
  - problem
---

Carol really likes counting, but can only keep track of so many numbers at once. She's devised a family of sequences that matches these aptitudes, in the following manner: Let $A_k(1) = 1$, then let $A_k(n+1)$ be the number of times $A_k(n)$ appears in the last $k$ terms of $A_k$.

For example, $A_3$ begins 1, 1, 2, 1, 2, 2, 2, 3, ...
```
1
1 1        - how many 1's?
11 2       - how many 1's?
112 1      - how many 2's?
 121 2     - how many 1's?
  212 2    - ...
   122 2
    222 3
```

Answer the following about Carol's sequences.

1. Prove that every $A_k$ is eventually periodic. We'll denote this period by $P(k)$ for the remaining questions.
2. Does every $P(k)$ include the initial 1? That is, is every $A_k$ just periodic?
3. Does every $P(k)$ include *some* 1?
4. Is $\vert P(k) \vert$ a monotonic function in $k$?
5. Is $\vert P(k) \vert$ bounded?
6. Give an explicit formula for $A_{\infty}$.
