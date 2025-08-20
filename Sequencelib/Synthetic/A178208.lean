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
# A178208 sequence 
-/


namespace Sequence

@[OEIS := A178208, offset := 1, derive := true, maxIndex := 32]
def A178208 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ ((y - 1) * y) + x) ((2 + x) * x) 0 / 2)

end Sequence

