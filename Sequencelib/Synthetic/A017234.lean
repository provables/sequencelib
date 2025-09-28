/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017234 sequence 
-/


namespace Sequence

@[OEIS := A017234, offset := 0, derive := true, maxIndex := 30]
def A017234 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ x * x) 1 (3 * (2 + ((x + x) + x)))

end Sequence

