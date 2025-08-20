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
# A295429 sequence 
-/


namespace Sequence

@[OEIS := A295429, offset := 3, derive := true, maxIndex := 3]
def A295429 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (((loop (λ (x _y : ℤ) ↦ (x * x) - 2) x (x * 2) + 2) + 2) + 2)

end Sequence

