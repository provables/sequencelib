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
# A101361 sequence 
-/


namespace Sequence

@[OEIS := A101361, offset := 1, derive := true, maxIndex := 10]
def A101361 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ x + y) x 0 2) 2 (1 + x) / 2)

end Sequence

