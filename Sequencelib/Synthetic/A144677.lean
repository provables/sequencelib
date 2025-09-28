/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A144677 sequence 
-/


namespace Sequence

@[OEIS := A144677, offset := 0, derive := true, maxIndex := 100]
def A144677 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ x + y) (1 + (y / 3)) x) x 1

end Sequence

