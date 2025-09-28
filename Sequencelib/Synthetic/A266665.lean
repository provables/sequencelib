/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A266665 sequence 
-/


namespace Sequence

@[OEIS := A266665, offset := 0, derive := true, maxIndex := 100]
def A266665 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ if (x % 2) ≤ 0 then 1 else y) x 1 - loop (λ (x y : ℤ) ↦ x - y) x 1)

end Sequence

