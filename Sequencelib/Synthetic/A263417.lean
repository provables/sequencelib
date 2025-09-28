/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A263417 sequence 
-/


namespace Sequence

@[OEIS := A263417, offset := 0, derive := true, maxIndex := 11]
def A263417 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ (3 * (x * y)) - x) y x) x 1

end Sequence

