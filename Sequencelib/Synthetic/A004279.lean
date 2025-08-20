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
# A004279 sequence 
-/


namespace Sequence

@[OEIS := A004279, offset := 0, derive := true, maxIndex := 55]
def A004279 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (_x y : ℤ) ↦ y) ((x - 2) - 2) 1 + x)

end Sequence

