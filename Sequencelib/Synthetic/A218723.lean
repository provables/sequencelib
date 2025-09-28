/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A218723 sequence 
-/


namespace Sequence

@[OEIS := A218723, offset := 0, derive := true, maxIndex := 100]
def A218723 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 1 + (loop (λ (x _y : ℤ) ↦ x * x) 2 4 * x)) x 0

end Sequence

