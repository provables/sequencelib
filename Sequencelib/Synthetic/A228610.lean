/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A228610 sequence
-/

namespace Sequence

@[OEIS := A228610, offset := 1, maxIndex := 6, derive := true]
def A228610 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + loop (λ (x y) ↦ ((2 + (2 + y)) * x) + y) 2 x) / (1 + x)

end Sequence