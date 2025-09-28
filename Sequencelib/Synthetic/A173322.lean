/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A173322 sequence 
-/


namespace Sequence

@[OEIS := A173322, offset := 0, derive := true, maxIndex := 100]
def A173322 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + (2 * loop (λ (x y : ℤ) ↦ x * y) x 2))

end Sequence

