/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A234429 sequence
-/

namespace Sequence

@[OEIS := A234429, offset := 1, maxIndex := 60, derive := true]
def A234429 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + loop (λ (_x y) ↦ y) (x - 2) 2) + x) + if x ≤ 0 then 1 else 2 + x

end Sequence