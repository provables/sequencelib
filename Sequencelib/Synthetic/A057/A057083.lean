/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A057083 sequence
-/

namespace Sequence

@[OEIS := A057083, offset := 0, maxIndex := 100, derive := true]
def A057083 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (x + x) + y) (λ (x y) ↦ y - x) x 1 1

end Sequence