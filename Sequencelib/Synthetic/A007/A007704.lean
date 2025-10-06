/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007704 sequence
-/

namespace Sequence

@[OEIS := A007704, offset := 1, maxIndex := 17, derive := true]
def A007704 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop2 (λ (x y) ↦ (x * y) + y) (λ (x _y) ↦ x) x 1 1

end Sequence