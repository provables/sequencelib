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
# A063491 sequence 
-/


namespace Sequence

@[OEIS := A063491, offset := 1, derive := true, maxIndex := 100]
def A063491 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + (x + x)) * loop (λ (x y : ℤ) ↦ ((x + y) + y) + y) x 1)

end Sequence

