/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A196662 sequence
-/

namespace Sequence

@[OEIS := A196662, offset := 0, maxIndex := 20, derive := true]
def A196662 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ ((2 * (2 + y)) + y) * x) (λ (_x _y) ↦ 2) x 1 1

end Sequence