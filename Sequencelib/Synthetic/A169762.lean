/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A169762 sequence 
-/


namespace Sequence

@[OEIS := A169762, offset := 5, derive := true, maxIndex := 7]
def A169762 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| (((loop (λ (x y : ℤ) ↦ (y / 2) + x) x x * x) / 4) + 1)

end Sequence

