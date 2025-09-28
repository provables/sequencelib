/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033573 sequence 
-/


namespace Sequence

@[OEIS := A033573, offset := 0, derive := true, maxIndex := 100]
def A033573 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ x + y) (1 + (2 * ((x + x) + x))) x + x)

end Sequence

