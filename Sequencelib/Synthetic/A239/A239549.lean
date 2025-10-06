/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A239549 sequence
-/

namespace Sequence

@[OEIS := A239549, offset := 0, maxIndex := 100, derive := true]
def A239549 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 2 * ((2 * (x + x)) + y)) (λ (x _y) ↦ 2 * ((x + x) + x)) x 0 1 / 2

end Sequence