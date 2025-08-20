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
# A070585 sequence 
-/


namespace Sequence

@[OEIS := A070585, offset := 0, derive := true, maxIndex := 77]
def A070585 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ x * x) 2 x % loop (λ (x _y : ℤ) ↦ (x * x) + x) 2 2)

end Sequence

