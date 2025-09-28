/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A037744 sequence 
-/


namespace Sequence

@[OEIS := A037744, offset := 1, derive := true, maxIndex := 23]
def A037744 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (4 * x) + (1 + x) % 4) x 2

end Sequence

