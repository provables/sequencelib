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
# A004271 sequence 
-/


namespace Sequence

@[OEIS := A004271, offset := 0, derive := true, maxIndex := 55]
def A004271 (x : ℕ) : ℕ :=
  Int.toNat <| (x + comprN (λ (_x : ℤ) ↦ 0) ((x - 2) - 2))

end Sequence

