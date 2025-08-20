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
# A030179 sequence 
-/


namespace Sequence

@[OEIS := A030179, offset := 0, derive := true, maxIndex := 100]
def A030179 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ (x * x) / 2) 2 x / 2)

end Sequence

