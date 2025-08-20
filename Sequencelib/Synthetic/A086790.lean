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
# A086790 sequence 
-/


namespace Sequence

@[OEIS := A086790, offset := 1, derive := true, maxIndex := 100]
def A086790 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (_x y : ℤ) ↦ 2 + (y * (y - 1))) (2 * x) 1 / (1 + x))

end Sequence

