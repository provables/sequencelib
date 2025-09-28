/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A136272 sequence 
-/


namespace Sequence

@[OEIS := A136272, offset := 1, derive := true, maxIndex := 63]
def A136272 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((1 - loop (λ (x y : ℤ) ↦ x - if x ≤ 0 then 0 else y) x x) + x) + x)

end Sequence

