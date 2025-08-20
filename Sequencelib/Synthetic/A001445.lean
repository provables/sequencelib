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
# A001445 sequence 
-/


namespace Sequence

@[OEIS := A001445, offset := 2, derive := true, maxIndex := 100]
def A001445 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ x + x) (x / 2) 1 + loop (λ (x _y : ℤ) ↦ x + x) x 2)

end Sequence

