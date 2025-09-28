/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059153 sequence 
-/


namespace Sequence

@[OEIS := A059153, offset := 0, derive := true, maxIndex := 100]
def A059153 (x : ℕ) : ℕ :=
  Int.toNat <| (2 * loop (λ (x _y : ℤ) ↦ x + x) x (loop (λ (x _y : ℤ) ↦ 2 + (x + x)) x 2))

end Sequence

