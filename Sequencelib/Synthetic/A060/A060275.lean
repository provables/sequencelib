/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A060275 sequence
-/

namespace Sequence

@[OEIS := A060275, offset := 1, maxIndex := 69, derive := true]
def A060275 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN
  (λ (x : ℤ) ↦
    ((((loop (λ (x y : ℤ) ↦ ((2 * if ((x % (1 + 2))) ≤ 0 then (2) else (1)) - 1)) (2) (x) + 2) * 2) * 2) - x))
  x

end Sequence