/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A122471 sequence
-/

namespace Sequence

@[OEIS := A122471, offset := 0, maxIndex := 21, derive := true]
def A122471 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((2 * ((x + x) + x)) - y) + x) x 1

end Sequence