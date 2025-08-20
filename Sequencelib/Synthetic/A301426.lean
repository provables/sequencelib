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
# A301426 sequence 
-/


namespace Sequence

@[OEIS := A301426, offset := 1, derive := true, maxIndex := 20]
def A301426 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ ((y - x) / 3) + x / 2) x 0 + 1)

end Sequence

