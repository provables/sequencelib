/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011849 sequence 
-/


namespace Sequence

@[OEIS := A011849, offset := 0, derive := true, maxIndex := 50]
def A011849 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ x + y) (y - 2) x) x 0 / 3)

end Sequence

