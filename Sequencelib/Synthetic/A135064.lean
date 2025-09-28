/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135064 sequence 
-/


namespace Sequence

@[OEIS := A135064, offset := 1, derive := true, maxIndex := 30]
def A135064 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if x ≤ 0 then 1 else loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) (2 + (x + x)) 1 2

end Sequence

