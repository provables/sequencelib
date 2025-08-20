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
# A172029 sequence 
-/


namespace Sequence

@[OEIS := A172029, offset := 1, derive := true, maxIndex := 7]
def A172029 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ (x + 2) * (3 * (1 + x))) x 2 + 1)

end Sequence

