/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A280186 sequence 
-/


namespace Sequence

@[OEIS := A280186, offset := 0, derive := true, maxIndex := 50]
def A280186 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ (x - 1) + y) (y / 2) x) x 0 * 2)

end Sequence

