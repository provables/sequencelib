/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A026384 sequence 
-/


namespace Sequence

@[OEIS := A026384, offset := 0, derive := true, maxIndex := 100]
def A026384 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ 1 + (x + x)) 2 y + y) (λ (x _y : ℤ) ↦ x) x 1 0

end Sequence

