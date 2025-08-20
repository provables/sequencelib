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
# A137864 sequence 
-/


namespace Sequence

@[OEIS := A137864, offset := 1, derive := true, maxIndex := 100]
def A137864 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x y : ℤ) ↦ (x - y) * x) 2 (2 - x) + 1) + x) + x)

end Sequence

