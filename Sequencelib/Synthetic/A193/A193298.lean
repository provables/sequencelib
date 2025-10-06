/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A193298 sequence
-/

namespace Sequence

@[OEIS := A193298, offset := 1, maxIndex := 100, derive := true]
def A193298 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ if (x - y) ≤ 0 then x + x else x - 1) x 1

end Sequence