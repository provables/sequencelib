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
# A017222 sequence 
-/


namespace Sequence

@[OEIS := A017222, offset := 0, derive := true, maxIndex := 30]
def A017222 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x * x) 1 (loop (λ (x y : ℤ) ↦ ((x + x) + x) + y) 2 x)

end Sequence

