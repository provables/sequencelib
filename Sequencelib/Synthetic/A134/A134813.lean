/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134813 sequence
-/

namespace Sequence

@[OEIS := A134813, offset := 0, maxIndex := 44, derive := true]
def A134813 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ 2 * ((-(x + y)))) (λ (x _y) ↦ x) x 3 0 / 2

end Sequence