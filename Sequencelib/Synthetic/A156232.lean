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
# A156232 sequence 
-/


namespace Sequence

@[OEIS := A156232, offset := 2, derive := true, maxIndex := 100]
def A156232 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ x + x) x 2 - loop2 (λ (_x y : ℤ) ↦ y + y) (λ (x _y : ℤ) ↦ x) x 2 0)

end Sequence

