/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Joe Stubbs, Walter Moreira
-/

import Mathlib
import Sequencelib.Meta

/-!
# Lucas sequence

This file introduces the Lucas sequence, a core sequence on the OEIS.

## Implementation notes

We define the Lucas sequence using a stream iterator, very similar to how Mathlib defines
the [Fibonacci sequence](https://leanprover-community.github.io/mathlib4_docs/Mathlib/Data/Nat/Fib/Basic.html#Nat.fib).


## Main results

- The basic definition and the first values of the sequence, up to `n=10` are given.

-/

namespace Sequence

/--
The Lucas numbers starting at 2; `L(n) = L(n-1) + L(n-2)`, `L(0) = 2`, `L(1) = 1`.
-/
@[OEIS := A000032, offset := 0]
def Lucas (n : ℕ) : ℕ :=
  ((fun p : ℕ × ℕ => (p.snd, p.fst + p.snd))^[n] (2, 1)).fst

theorem Lucas_zero : Lucas 0 = 2 :=
  rfl

theorem Lucas_one : Lucas 1 = 1 :=
  rfl

theorem Lucas_two : Lucas 2 = 3 :=
  rfl

theorem Lucas_three : Lucas 3 = 4 :=
  rfl

theorem Lucas_four : Lucas 4 = 7 :=
  rfl

theorem Lucas_five : Lucas 5 = 11 :=
  rfl

theorem Lucas_six : Lucas 6 = 18 :=
  rfl

theorem Lucas_seven : Lucas 7 = 29 :=
  rfl

theorem Lucas_eight : Lucas 8 = 47 :=
  rfl

theorem Lucas_nine : Lucas 9 = 76 :=
  rfl

theorem Lucas_ten : Lucas 10 = 123 :=
  rfl
