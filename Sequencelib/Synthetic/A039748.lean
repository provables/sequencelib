/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A039748 sequence
-/

namespace Sequence

@[OEIS := A039748, offset := 0, maxIndex := 4, derive := true]
def A039748 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ loop (λ (x _y) ↦ x + x) y (x - 1)) x 2 / 2

end Sequence