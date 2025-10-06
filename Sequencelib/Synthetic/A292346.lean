/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A292346 sequence
-/

namespace Sequence

@[OEIS := A292346, offset := 1, maxIndex := 36, derive := true]
def A292346 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((loop (λ (x y) ↦ 2 + (2 + (x + y))) (2 + ((x + x) * 2)) 1 * 2) * 2) * 2) + 2) + 2) + 2) * 2

end Sequence