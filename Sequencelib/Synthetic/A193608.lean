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
# A193608 sequence 
-/


namespace Sequence

@[OEIS := A193608, offset := 1, derive := true, maxIndex := 100]
def A193608 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ (2 * ((x * x) * x)) - x) 1 (2 + x) + 1)

end Sequence

