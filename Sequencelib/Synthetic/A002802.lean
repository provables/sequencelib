/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002802 sequence 
-/


namespace Sequence

@[OEIS := A002802, offset := 0, derive := true, maxIndex := 100]
def A002802 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ ((3 * ((2 + y) * x)) / y) + x) x 1

end Sequence

