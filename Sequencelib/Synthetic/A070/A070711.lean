/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070711 sequence
-/

namespace Sequence

@[OEIS := A070711, offset := 0, maxIndex := 77, derive := true]
def A070711 (x : ℕ) : ℤ :=
  ((x * x) * x) % ((loop (λ (x _y) ↦ x * x) 2 2 * 2) - 2)

end Sequence