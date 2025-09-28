/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A109900 sequence 
-/


namespace Sequence

@[OEIS := A109900, offset := 0, derive := true, maxIndex := 47]
def A109900 (x : ℕ) : ℕ :=
  Int.toNat <| (((1 + x) * loop (λ (x y : ℤ) ↦ ((1 + y) / 2) + x) x 0) / 2)

end Sequence

