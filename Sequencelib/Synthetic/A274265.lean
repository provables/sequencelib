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
# A274265 sequence 
-/


namespace Sequence

@[OEIS := A274265, offset := 1, derive := true, maxIndex := 17]
def A274265 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (2 + (3 * y)) * x) (λ (_x y : ℤ) ↦ y) x 1 x

end Sequence

