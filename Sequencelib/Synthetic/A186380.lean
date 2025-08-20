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
# A186380 sequence 
-/


namespace Sequence

@[OEIS := A186380, offset := 1, derive := true, maxIndex := 87]
def A186380 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (x + y) / 2) 2 (loop (λ (x y : ℤ) ↦ x + y) x x) + x)

end Sequence

