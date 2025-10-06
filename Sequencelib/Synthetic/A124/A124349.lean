/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A124349 sequence
-/

namespace Sequence

@[OEIS := A124349, offset := 3, maxIndex := 65, derive := true]
def A124349 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| 2 * (2 + loop2 (λ (_x y) ↦ 2 + y) (λ (x _y) ↦ x) x 1 2)

end Sequence