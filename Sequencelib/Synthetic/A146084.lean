/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A146084 sequence
-/

namespace Sequence

@[OEIS := A146084, offset := 0, maxIndex := 100, derive := true]
def A146084 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ 4 * (x * 3)) x 1 0

end Sequence