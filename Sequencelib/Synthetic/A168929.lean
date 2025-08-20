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
# A168929 sequence 
-/


namespace Sequence

@[OEIS := A168929, offset := 0, derive := true, maxIndex := 18]
def A168929 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 2 * ((2 * ((x + x) + x)) - x / 2)) x 1

end Sequence

