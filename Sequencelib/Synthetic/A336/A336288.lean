/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A336288 sequence
-/

namespace Sequence

@[OEIS := A336288, offset := 1, maxIndex := 41, derive := true]
def A336288 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + loop (λ (x y) ↦ ((y * y) + x) + y) (x + x) x

end Sequence