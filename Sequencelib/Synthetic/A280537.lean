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
# A280537 sequence 
-/


namespace Sequence

@[OEIS := A280537, offset := 2, derive := true, maxIndex := 7]
def A280537 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop (λ (x _y : ℤ) ↦ (((x / 2) / 2) + 2) + x) 2 (x + 1) + x)

end Sequence

