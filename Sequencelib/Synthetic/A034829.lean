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
# A034829 sequence 
-/


namespace Sequence

@[OEIS := A034829, offset := 1, derive := true, maxIndex := 17]
def A034829 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y : ℤ) ↦ (2 + ((1 + (2 + 4)) * y)) * x) x 1

end Sequence

