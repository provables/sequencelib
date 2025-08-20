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
# A070337 sequence 
-/


namespace Sequence

@[OEIS := A070337, offset := 0, derive := true, maxIndex := 100]
def A070337 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ x + x) x 1 % loop (λ (x y : ℤ) ↦ (x * x) + y) 2 2)

end Sequence

