/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081090 sequence 
-/


namespace Sequence

@[OEIS := A081090, offset := 1, derive := true, maxIndex := 8]
def A081090 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if x ≤ 0 then 0 else loop2 (λ (x y : ℤ) ↦ ((x * x) * y) + y) (λ (x _y : ℤ) ↦ x) x 1 1

end Sequence

