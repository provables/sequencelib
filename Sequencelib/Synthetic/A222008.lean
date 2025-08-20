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
# A222008 sequence 
-/


namespace Sequence

@[OEIS := A222008, offset := 1, derive := true, maxIndex := 4]
def A222008 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + loop (λ (x _y : ℤ) ↦ x * x) (1 + x) 2)

end Sequence

