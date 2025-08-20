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
# A047300 sequence 
-/


namespace Sequence

@[OEIS := A047300, offset := 1, derive := true, maxIndex := 64]
def A047300 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ ((x % (1 + (2 + 4))) / 2) + x) x 2

end Sequence

