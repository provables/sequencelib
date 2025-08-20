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
# A073636 sequence 
-/


namespace Sequence

@[OEIS := A073636, offset := 1, derive := true, maxIndex := 87]
def A073636 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (_x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ 2 + (x + y)) 2 y) (x % 3) 1

end Sequence

