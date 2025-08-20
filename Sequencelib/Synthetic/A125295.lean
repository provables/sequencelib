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
# A125295 sequence 
-/


namespace Sequence

@[OEIS := A125295, offset := 0, derive := true, maxIndex := 7]
def A125295 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (1 + x) * (x * x)) x 1

end Sequence

