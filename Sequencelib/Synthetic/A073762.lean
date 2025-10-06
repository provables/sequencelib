/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A073762 sequence
-/

namespace Sequence

@[OEIS := A073762, offset := 1, maxIndex := 51, derive := true]
def A073762 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 * loop (λ (x y) ↦ ((2 + y) * x) + y) 2 x

end Sequence