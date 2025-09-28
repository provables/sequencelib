/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A248924 sequence 
-/


namespace Sequence

@[OEIS := A248924, offset := 0, derive := true, maxIndex := 39]
def A248924 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (_x y : ℤ) ↦ y) (λ (x y : ℤ) ↦ x + y) x 2 1 - loop (λ (x _y : ℤ) ↦ -x) x x)

end Sequence

