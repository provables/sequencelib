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
# A185014 sequence 
-/


namespace Sequence

@[OEIS := A185014, offset := 0, derive := true, maxIndex := 86]
def A185014 (x : ℕ) : ℕ :=
  Int.toNat <| (1 / loop (λ (_x y : ℤ) ↦ y) ((x - 1) - 2) 2)

end Sequence

