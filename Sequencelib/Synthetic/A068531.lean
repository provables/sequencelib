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
# A068531 sequence 
-/


namespace Sequence

@[OEIS := A068531, offset := 1, derive := true, maxIndex := 8]
def A068531 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (loop (λ (x _y : ℤ) ↦ x + x) y x * x) + x) x 2 / 2)

end Sequence

