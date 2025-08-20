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
# A141341 sequence 
-/


namespace Sequence

@[OEIS := A141341, offset := 1, derive := true, maxIndex := 12]
def A141341 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ x * y) (y / 3) 1 + x) x 1

end Sequence

