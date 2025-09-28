/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A230059 sequence 
-/


namespace Sequence

@[OEIS := A230059, offset := 1, derive := true, maxIndex := 29]
def A230059 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (_x y : ℤ) ↦ y * y) x 1 - 1) / 3) / 4)

end Sequence

