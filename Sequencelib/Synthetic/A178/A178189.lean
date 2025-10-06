/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A178189 sequence
-/

namespace Sequence

@[OEIS := A178189, offset := 1, maxIndex := 49, derive := true]
def A178189 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 1 + loop (λ (x _y) ↦ (2 * (x + x)) + x) (2 + y) x) x 1

end Sequence