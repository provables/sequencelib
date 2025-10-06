/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A109437 sequence
-/

namespace Sequence

@[OEIS := A109437, offset := 0, maxIndex := 27, derive := true]
def A109437 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((2 * (x + x)) - 1) - y) (λ (x _y) ↦ x) x 1 0 / 3

end Sequence