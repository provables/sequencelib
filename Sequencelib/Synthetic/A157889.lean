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
# A157889 sequence 
-/


namespace Sequence

@[OEIS := A157889, offset := 1, derive := true, maxIndex := 100]
def A157889 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((2 * loop (λ (x _y : ℤ) ↦ x * x) 1 (3 * (1 + x))) + 1)

end Sequence

