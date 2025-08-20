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
# A228105 sequence 
-/


namespace Sequence

@[OEIS := A228105, offset := 0, derive := true, maxIndex := 100]
def A228105 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y : ℤ) ↦ ((x + x) + x) * x) 2 (x + x) * x) * x)

end Sequence

