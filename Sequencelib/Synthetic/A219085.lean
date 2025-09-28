/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A219085 sequence 
-/


namespace Sequence

@[OEIS := A219085, offset := 0, derive := true, maxIndex := 100]
def A219085 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ ((x * x) * y) + x) 2 x / (1 + (x + x)))

end Sequence

