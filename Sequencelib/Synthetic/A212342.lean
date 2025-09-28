/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A212342 sequence 
-/


namespace Sequence

@[OEIS := A212342, offset := 0, derive := true, maxIndex := 65]
def A212342 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ (x - (1 / x)) + y) x 1

end Sequence

