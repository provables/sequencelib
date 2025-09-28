/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A177100 sequence 
-/


namespace Sequence

@[OEIS := A177100, offset := 0, derive := true, maxIndex := 51]
def A177100 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ ((y * y) / 3) + x) x 1 / 3)

end Sequence

