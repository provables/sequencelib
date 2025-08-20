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
# A017140 sequence 
-/


namespace Sequence

@[OEIS := A017140, offset := 0, derive := true, maxIndex := 20]
def A017140 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x * x) 2 (2 * loop (λ (x _y : ℤ) ↦ 1 + (x + x)) 2 x)

end Sequence

