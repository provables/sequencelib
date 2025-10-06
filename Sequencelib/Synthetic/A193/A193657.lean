/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A193657 sequence
-/

namespace Sequence

@[OEIS := A193657, offset := 0, maxIndex := 100, derive := true]
def A193657 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (loop (λ (x y) ↦ 1 + (x * y)) x 0 * x)

end Sequence