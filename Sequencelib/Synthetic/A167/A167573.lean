/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A167573 sequence
-/

namespace Sequence

@[OEIS := A167573, offset := 1, maxIndex := 100, derive := true]
def A167573 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + ((1 + x) * ((1 + x) * loop (λ (x _y) ↦ 2 * (2 + x)) 2 2))) + 2

end Sequence