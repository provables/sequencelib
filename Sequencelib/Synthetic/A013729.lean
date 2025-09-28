/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A013729 sequence 
-/


namespace Sequence

@[OEIS := A013729, offset := 0, derive := true, maxIndex := 11]
def A013729 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ loop (λ (x y : ℤ) ↦ x * y) 4 x) (1 + (x + x)) 1

end Sequence

