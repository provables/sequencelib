/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A266663 sequence 
-/


namespace Sequence

@[OEIS := A266663, offset := 0, derive := true, maxIndex := 100]
def A266663 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (loop (λ (x y : ℤ) ↦ x + y) (x - (2 - (x % 2))) x + x))

end Sequence

