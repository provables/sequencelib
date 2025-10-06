/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A141125 sequence
-/

namespace Sequence

@[OEIS := A141125, offset := 0, maxIndex := 32, derive := true]
def A141125 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ x + y) (λ (x y) ↦ y - x) (x + x) 1 2

end Sequence