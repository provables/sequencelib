/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A105336 sequence 
-/


namespace Sequence

@[OEIS := A105336, offset := 0, derive := true, maxIndex := 69]
def A105336 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ x + y) x 0 % loop (λ (x _y : ℤ) ↦ (2 * x) * x) 2 2)

end Sequence

