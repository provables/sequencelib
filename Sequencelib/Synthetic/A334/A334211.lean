/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A334211 sequence
-/

namespace Sequence

@[OEIS := A334211, offset := 0, maxIndex := 8, derive := true]
def A334211 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop2 (λ (x y) ↦ (y * y) + x) (λ (x y) ↦ x * y) y 1 1 * x) + 1) x 1

end Sequence