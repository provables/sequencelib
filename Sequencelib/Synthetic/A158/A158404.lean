/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158404 sequence
-/

namespace Sequence

@[OEIS := A158404, offset := 1, maxIndex := 100, derive := true]
def A158404 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + x) + loop (λ (x y) ↦ ((2 + y) * x) + x) 4 (1 + x)

end Sequence