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
# A163864 sequence 
-/


namespace Sequence

@[OEIS := A163864, offset := 1, derive := true, maxIndex := 42]
def A163864 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y : ℤ) ↦ y + y) (λ (x _y : ℤ) ↦ x) x 1 3

end Sequence

