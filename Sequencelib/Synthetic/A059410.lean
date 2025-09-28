/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059410 sequence 
-/


namespace Sequence

@[OEIS := A059410, offset := 0, derive := true, maxIndex := 22]
def A059410 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (x * x) - x) 1 (loop (λ (x _y : ℤ) ↦ (x + x) + x) x 1)

end Sequence

