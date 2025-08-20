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
# A136796 sequence 
-/


namespace Sequence

@[OEIS := A136796, offset := 1, derive := true, maxIndex := 100]
def A136796 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ ((y * x) + x) * 4) (λ (_x y : ℤ) ↦ y) x 2 x

end Sequence

