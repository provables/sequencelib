/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A098291 sequence
-/

namespace Sequence

@[OEIS := A098291, offset := 0, maxIndex := 10, derive := true]
def A098291 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (loop (λ (x y) ↦ ((x * x) * x) + y) 2 2 * x) - y) (λ (x _y) ↦ x) x 1 ((-1))

end Sequence