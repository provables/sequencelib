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
# A026352 sequence 
-/


namespace Sequence

@[OEIS := A026352, offset := 0, derive := true, maxIndex := 56]
def A026352 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ ((y * y) / (2 + x)) + y) x 0 + 1) + x)

end Sequence

