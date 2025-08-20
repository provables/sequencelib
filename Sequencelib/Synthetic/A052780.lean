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
# A052780 sequence 
-/


namespace Sequence

@[OEIS := A052780, offset := 0, derive := true, maxIndex := 100]
def A052780 (x : ℕ) : ℕ :=
  Int.toNat <| (((x * x) - x) * loop (λ (x _y : ℤ) ↦ x * 4) (x - 2) 1)

end Sequence

