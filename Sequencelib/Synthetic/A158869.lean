/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158869 sequence 
-/


namespace Sequence

@[OEIS := A158869, offset := 0, derive := true, maxIndex := 20]
def A158869 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (2 * ((x + x) + y)) + x) (λ (x y : ℤ) ↦ x + y) x 1 0

end Sequence

