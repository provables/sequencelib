/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131818 sequence
-/

namespace Sequence

@[OEIS := A131818, offset := 1, maxIndex := 78, derive := true]
def A131818 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (x y) ↦ loop (λ (_x y) ↦ y) (x - y) x) x x

end Sequence