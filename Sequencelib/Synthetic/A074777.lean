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
# A074777 sequence 
-/


namespace Sequence

@[OEIS := A074777, offset := 1, derive := true, maxIndex := 6]
def A074777 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((2 * loop (λ (x _y : ℤ) ↦ x * x) x 2) - 2)

end Sequence

