/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A142238 sequence
-/

namespace Sequence

@[OEIS := A142238, offset := 0, maxIndex := 26, derive := true]
def A142238 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (x + x)) + y) (λ (x _y) ↦ x + x) x 1 1 / loop (λ (x _y) ↦ x + x) (x / 2) 1

end Sequence