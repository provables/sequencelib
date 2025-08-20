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
# A221364 sequence 
-/


namespace Sequence

@[OEIS := A221364, offset := 0, derive := true, maxIndex := 50]
def A221364 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) (if (x % 2) ≤ 0 then 1 else x) 1 2 - 2)

end Sequence

