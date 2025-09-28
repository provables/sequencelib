/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011842 sequence 
-/


namespace Sequence

@[OEIS := A011842, offset := 0, derive := true, maxIndex := 50]
def A011842 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ (x - 2) + y) y x) x x / 2) / 2)

end Sequence

