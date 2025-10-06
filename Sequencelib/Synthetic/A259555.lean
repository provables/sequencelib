/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A259555 sequence
-/

namespace Sequence

@[OEIS := A259555, offset := 1, maxIndex := 100, derive := true]
def A259555 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (2 * (2 * (2 + loop (λ (x y) ↦ x + y) x 2)))

end Sequence