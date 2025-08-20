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
# A010898 sequence 
-/


namespace Sequence

@[OEIS := A010898, offset := 1, derive := true, maxIndex := 5]
def A010898 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ x + y) y x + y) (2 + x) x - 2)

end Sequence

