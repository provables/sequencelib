/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A296378 sequence 
-/


namespace Sequence

@[OEIS := A296378, offset := 1, derive := true, maxIndex := 5]
def A296378 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x y : ℤ) ↦ ((x * x) - x) + y) x 1 + 2) + x) + x)

end Sequence

