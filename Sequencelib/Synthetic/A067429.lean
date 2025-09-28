/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A067429 sequence 
-/


namespace Sequence

@[OEIS := A067429, offset := 0, derive := true, maxIndex := 50]
def A067429 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ 2 * (x * y)) (λ (_x _y : ℤ) ↦ 3) (x + x) 1 1

end Sequence

