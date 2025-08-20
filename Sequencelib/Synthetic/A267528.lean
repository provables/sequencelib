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
# A267528 sequence 
-/


namespace Sequence

@[OEIS := A267528, offset := 0, derive := true, maxIndex := 100]
def A267528 (x : ℕ) : ℕ :=
  Int.toNat <| ((x / 2) + loop (λ (_x y : ℤ) ↦ y) (x - 1) 1)

end Sequence

