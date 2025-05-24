/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: Joe Stubbs, Walter Moreira
-/

import Mathlib
import Sequencelib.Meta


namespace Sequence

/-
The Lucas numbers starting at 2; `L(n) = L(n-1) + L(n-2)`, `L(0) = 2`, `L(1) = 1`.
-/
@[OEIS := A000032, offset := 0]
def lucas (n : ℕ) : ℕ :=
  ((fun p : ℕ × ℕ => (p.snd, p.fst + p.snd))^[n] (2, 1)).fst

theorem lucas_zero : lucas 0 = 2 :=
  rfl

theorem lucas_one : lucas 1 = 1 :=
  rfl

theorem lucas_two : lucas 2 = 3 :=
  rfl

theorem lucas_three : lucas 3 = 4 :=
  rfl

theorem lucas_four : lucas 4 = 7 :=
  rfl

theorem lucas_five : lucas 5 = 11 :=
  rfl

theorem lucas_six : lucas 6 = 18 :=
  rfl

theorem lucas_seven : lucas 7 = 29 :=
  rfl

theorem lucas_eight : lucas 8 = 47 :=
  rfl

theorem lucas_nine : lucas 9 = 76 :=
  rfl

theorem lucas_ten : lucas 10 = 123 :=
  rfl
