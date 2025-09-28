/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A327411 sequence 
-/


namespace Sequence

@[OEIS := A327411, offset := 0, derive := true, maxIndex := 16]
def A327411 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ x + y) ((1 + y) * 2) 0 * x) x 1

end Sequence

