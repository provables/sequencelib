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
# A306589 sequence 
-/


namespace Sequence

@[OEIS := A306589, offset := 1, derive := true, maxIndex := 4]
def A306589 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ (2 + ((x / y) * x)) + y) (λ (x _y : ℤ) ↦ x) x 1 x + x)

end Sequence

