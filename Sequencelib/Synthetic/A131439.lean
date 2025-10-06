/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131439 sequence
-/

namespace Sequence

@[OEIS := A131439, offset := 1, maxIndex := 45, derive := true]
def A131439 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((((x / 2) % 2) + 2) * (2 + y)) + y) x 1

end Sequence