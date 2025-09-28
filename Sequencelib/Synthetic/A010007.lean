/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010007 sequence 
-/


namespace Sequence

@[OEIS := A010007, offset := 0, derive := true, maxIndex := 100]
def A010007 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (_x y : ℤ) ↦ 2 + (y * y)) (2 * (x + x)) 1 + x * x)

end Sequence

