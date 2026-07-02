---
title: "Teensy Problems: Alien Astronomer (Part 2)"
date: 2026-07-01
categories:
  - teensy-problems
tags:
  - math
  - problem
---

Thanks to you, Gryxlb now has a satisfactory picture of what that malfunctioning machine got up to, and is ready to prepare their analysis of the newly-coined Orion Object cOunting interceptiOn (OOOO) for the wider scientific community on Xorgmathrx. They copy the raw interception data from a (functioning) computer onto a USB drive (it's not called "*universal* serial bus" for nothing) to take to the Tbibthglx University Library, whose workstations have the analysis software Gryxlb likes to use.

However, upon loading the data, Gryxlb notices that their USB drive must be malfunctioning too, because instead of the signals counting up from 0, they're all jumbled. Upon closer inspection of the underlying bits, they notice that every signal has had the transformation `01 -> 100` applied to its binary representation. For example, signal `5 = 101b` became `1[01] -> 1[100] = 1100b = 12`.

Intrigued by the chaos, Gryxlb decides to re-export the data onto the same drive, applying the bit transformation once again. For the same example, `12` stays at `12`, since `01` doesn't appear in its binary representation. After doing so a few more times, they've noticed that most of the earlier signals have settled down to a fixed point. Let's figure out what's going before Gryxlb does this for the rest of the day. Denote this transformation by $B(x)$.

1. Prove that $B(x) \geq x$ for all $x \geq 0$.

2. Prove that all $x \geq 0$ eventually stabilize to a fixed point under $B$.

3. Mathematically describe the fixed points of $B$.

4. Does $B$ have an inverse? Can the original signal data be recovered?
