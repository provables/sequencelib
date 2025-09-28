/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A164514 sequence 
-/


namespace Sequence

@[OEIS := A164514, offset := 1, derive := true, maxIndex := 72]
def A164514 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ ((y - x) / (1 + (x * x))) + x) x 1 + x)

end Sequence

