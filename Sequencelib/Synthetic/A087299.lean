/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A087299 sequence 
-/


namespace Sequence

@[OEIS := A087299, offset := 0, derive := true, maxIndex := 50]
def A087299 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ 2 * (x * y)) y 1 / (x + x)) x 1

end Sequence

