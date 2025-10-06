/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A213569 sequence
-/

namespace Sequence

@[OEIS := A213569, offset := 1, maxIndex := 100, derive := true]
def A213569 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (2 * loop (λ (x y) ↦ (x + x) + y) x x)

end Sequence