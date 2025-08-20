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
# A033405 sequence 
-/


namespace Sequence

@[OEIS := A033405, offset := 1, derive := true, maxIndex := 92]
def A033405 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + (2 * loop (λ (x _y : ℤ) ↦ (x * x) + x) 2 2)) / (1 + x))

end Sequence

