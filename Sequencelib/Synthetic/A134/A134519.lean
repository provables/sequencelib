/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134519 sequence
-/

namespace Sequence

@[OEIS := A134519, offset := 1, maxIndex := 100, derive := true]
def A134519 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (x y) ↦ (x - 1) + y) (x / 2) x

end Sequence