/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A178181 sequence 
-/


namespace Sequence

@[OEIS := A178181, offset := 0, derive := true, maxIndex := 11]
def A178181 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (_x y : ℤ) ↦ y) (x - 1) 1 / 2) + (x * 2) * 2) + x)

end Sequence

