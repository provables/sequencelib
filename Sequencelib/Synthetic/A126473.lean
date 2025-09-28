/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A126473 sequence 
-/


namespace Sequence

@[OEIS := A126473, offset := 0, derive := true, maxIndex := 24]
def A126473 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (x + y) + y) (λ (x y : ℤ) ↦ 3 * (x + y)) x 1 2

end Sequence

