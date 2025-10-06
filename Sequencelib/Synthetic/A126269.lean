/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A126269 sequence
-/

namespace Sequence

@[OEIS := A126269, offset := 3, maxIndex := 30, derive := true]
def A126269 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (1 + loop (λ (x y) ↦ 2 * (y + x)) (x / 2) 2) + x

end Sequence