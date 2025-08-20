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
# A017166 sequence 
-/


namespace Sequence

@[OEIS := A017166, offset := 0, derive := true, maxIndex := 16]
def A017166 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ (x * x) * y) (λ (x _y : ℤ) ↦ x) 3 3 x * x)

end Sequence

