/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A268506 sequence 
-/


namespace Sequence

@[OEIS := A268506, offset := 0, derive := true, maxIndex := 10]
def A268506 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ x * y) ((2 * (y + y)) + y) x) x 1

end Sequence

