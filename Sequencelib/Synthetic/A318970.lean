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
# A318970 sequence 
-/


namespace Sequence

@[OEIS := A318970, offset := 1, derive := true, maxIndex := 4]
def A318970 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + loop (λ (x _y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ 2 * x) x 2 + 3) x 1)

end Sequence

