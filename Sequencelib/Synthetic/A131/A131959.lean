/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131959 sequence
-/

namespace Sequence

@[OEIS := A131959, offset := 1, maxIndex := 4, derive := true]
def A131959 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (_x y) ↦ y) ((x * x) - 2) x

end Sequence