/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A101052 sequence 
-/


namespace Sequence

@[OEIS := A101052, offset := 0, derive := true, maxIndex := 100]
def A101052 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ ((x - 2) + x) + y) (λ (_x y : ℤ) ↦ (y + y) + y) x 1 1

end Sequence

