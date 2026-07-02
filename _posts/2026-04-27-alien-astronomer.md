---
title: "Teensy Problems: Alien Astronomer (Part 1)"
date: 2026-04-27
categories:
  - teensy-problems
tags:
  - math
  - problem
---

Gryxlb, an alien radio astronomer on planet Xorgmathrx, has started intercepting a peculiarly structured signal. There's a stream of pulses originating from the Orion Arm counting up from zero in binary; it must be a deliberate message from an intelligent civilization! The telescope's computers are recording the pulses, but one is malfunctioning: instead of writing the pulses into memory, each memory slot is the bitwise exclusive or (xor) of the incoming pulse and the previous memory slot.

For example, if the last memory slot holds `4` (in decimal, as Gryxlb's species also happens to have ten total digits across its forelimbs) and a pulse encoding `5` arrives, the value `4 ^ 5 = 100b ^ 101b = 001b = 1` is stored in the next slot.

Of course, Gryxlb will be reporting this Xorgmathrx-shattering discovery to the proper authorities, but they're currently too fascinated by this malfunction. They want to figure out the structure of the resulting memory; luckily, they know that the very first memory slot held `0` before it started recording the pulses.

1. Find the values of the first 32 malfunctioning memory slots.

2. Find a pattern in the memory slots after many pulses have been recorded, then prove your pattern will hold indefinitely.

3. How is the pattern altered if the first memory slot wasn't `0`?
