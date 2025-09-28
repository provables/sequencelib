/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A183895 sequence 
-/


namespace Sequence

@[OEIS := A183895, offset := 0, derive := true, maxIndex := 10]
def A183895 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ y - x) (λ (x y : ℤ) ↦ x + y) (loop (λ (x y : ℤ) ↦ x + y) x 0) 1 0

end Sequence

