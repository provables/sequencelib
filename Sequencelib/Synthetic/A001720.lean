/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001720 sequence 
-/


namespace Sequence

@[OEIS := A001720, offset := 4, derive := true, maxIndex := 20]
def A001720 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| loop (λ (x y : ℤ) ↦ (2 + (2 + y)) * x) x 1

end Sequence

