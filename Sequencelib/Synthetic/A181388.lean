/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A181388 sequence 
-/


namespace Sequence

@[OEIS := A181388, offset := 0, derive := true, maxIndex := 50]
def A181388 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ x + x) y x / 2) y 1 + x) x 0

end Sequence

