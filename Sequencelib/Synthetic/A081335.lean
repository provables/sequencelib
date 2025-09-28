/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081335 sequence 
-/


namespace Sequence

@[OEIS := A081335, offset := 0, derive := true, maxIndex := 100]
def A081335 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x + x) x (loop (λ (x _y : ℤ) ↦ ((x - 1) + x) + x) x 1)

end Sequence

