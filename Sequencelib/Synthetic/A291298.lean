/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A291298 sequence 
-/


namespace Sequence

@[OEIS := A291298, offset := 1, derive := true, maxIndex := 9]
def A291298 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x _y : ℤ) ↦ x + x) (x - 2) 2 - 1) / (1 + x)) + x)

end Sequence

