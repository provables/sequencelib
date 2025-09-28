/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A247425 sequence 
-/


namespace Sequence

@[OEIS := A247425, offset := 1, derive := true, maxIndex := 65]
def A247425 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (((y * y) + y) / (2 + x)) + y) x 0 + 1)

end Sequence

