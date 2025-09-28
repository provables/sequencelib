/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A326278 sequence 
-/


namespace Sequence

@[OEIS := A326278, offset := 0, derive := true, maxIndex := 40]
def A326278 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y : ℤ) ↦ ((y * y) - y) + x) x 1 - x) * x) / 2)

end Sequence

