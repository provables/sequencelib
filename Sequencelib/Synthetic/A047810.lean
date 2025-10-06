/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047810 sequence
-/

namespace Sequence

@[OEIS := A047810, offset := 0, maxIndex := 16, derive := true]
def A047810 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) y x) (x + x) 0

end Sequence