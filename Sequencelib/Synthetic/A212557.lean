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
# A212557 sequence 
-/


namespace Sequence

@[OEIS := A212557, offset := 1, derive := true, maxIndex := 2]
def A212557 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((((x + 1) + x) * 2) * y) + x) (2 + x) 1

end Sequence

