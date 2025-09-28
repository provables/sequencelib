/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003511 sequence 
-/


namespace Sequence

@[OEIS := A003511, offset := 1, derive := true, maxIndex := 100]
def A003511 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((y * y) / ((2 + x) * 2)) + y) (1 + x) 0

end Sequence

