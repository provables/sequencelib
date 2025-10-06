/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A155859 sequence
-/

namespace Sequence

@[OEIS := A155859, offset := 1, maxIndex := 100, derive := true]
def A155859 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 2 * (((2 * (x + x)) - y) + x)) (1 + x) 1 / 2

end Sequence