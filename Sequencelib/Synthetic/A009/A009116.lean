/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A009116 sequence
-/

namespace Sequence

@[OEIS := A009116, offset := 0, maxIndex := 100, derive := true]
def A009116 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (-(x + y))) (λ (x y) ↦ x - y) x 1 0

end Sequence