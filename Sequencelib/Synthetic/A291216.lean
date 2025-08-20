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
# A291216 sequence 
-/


namespace Sequence

@[OEIS := A291216, offset := 1, derive := true, maxIndex := 6]
def A291216 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ x * x) 2 x % loop (λ (x _y : ℤ) ↦ x + x) x 3)

end Sequence

