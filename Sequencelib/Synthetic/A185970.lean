/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A185970 sequence 
-/


namespace Sequence

@[OEIS := A185970, offset := 0, derive := true, maxIndex := 50]
def A185970 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (loop (λ (x _y : ℤ) ↦ x + x) y x / 2) * (2 + y)) x 1

end Sequence

