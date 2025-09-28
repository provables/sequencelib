/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152725 sequence 
-/


namespace Sequence

@[OEIS := A152725, offset := 0, derive := true, maxIndex := 100]
def A152725 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((loop (λ (x _y : ℤ) ↦ x * x) 2 y * y) * y) - x) x 0

end Sequence

