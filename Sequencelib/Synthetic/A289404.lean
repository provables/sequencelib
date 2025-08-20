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
# A289404 sequence 
-/


namespace Sequence

@[OEIS := A289404, offset := 0, derive := true, maxIndex := 100]
def A289404 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 1 + (2 * ((2 * (x + x)) + x))) (x / 2) 1

end Sequence

