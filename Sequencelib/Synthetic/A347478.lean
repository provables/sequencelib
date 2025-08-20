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
# A347478 sequence 
-/


namespace Sequence

@[OEIS := A347478, offset := 1, derive := true, maxIndex := 24]
def A347478 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ x + x) (2 * (2 + x)) 1 - loop (λ (_x _y : ℤ) ↦ 0) x 1)

end Sequence

