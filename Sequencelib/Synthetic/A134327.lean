/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134327 sequence
-/

namespace Sequence

@[OEIS := A134327, offset := 0, maxIndex := 37, derive := true]
def A134327 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ loop (λ (x _y) ↦ (x * x) + x) 2 (y - 1) + x) x 1 - 2

end Sequence