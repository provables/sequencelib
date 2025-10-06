/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A151342 sequence
-/

namespace Sequence

@[OEIS := A151342, offset := 0, maxIndex := 9, derive := true]
def A151342 (x : ℕ) : ℤ :=
  ((loop (λ (x y) ↦ (x * y) * y) (x + x) 1 / loop (λ (x y) ↦ ((y * y) * y) * x) x 1) / loop (λ (x y) ↦ (x * y) + x) x 1) /
  (1 + x)

end Sequence