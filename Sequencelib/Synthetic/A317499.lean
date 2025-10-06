/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A317499 sequence
-/

namespace Sequence

@[OEIS := A317499, offset := 0, maxIndex := 100, derive := true]
def A317499 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ 1 - (3 * (x + y))) (λ (x _y) ↦ x) x 1 0

end Sequence