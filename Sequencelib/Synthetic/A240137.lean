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
# A240137 sequence 
-/


namespace Sequence

@[OEIS := A240137, offset := 0, derive := true, maxIndex := 100]
def A240137 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ ((y * y) * y) + x) (λ (_x y : ℤ) ↦ 1 + y) x 1 x - 1)

end Sequence

