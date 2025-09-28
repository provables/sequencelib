/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A273384 sequence 
-/


namespace Sequence

@[OEIS := A273384, offset := 0, derive := true, maxIndex := 100]
def A273384 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y : ℤ) ↦ ((2 % x) + y) + y) x 1 * 2) * x) + 1)

end Sequence

