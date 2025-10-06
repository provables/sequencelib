/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A162024 sequence
-/

namespace Sequence

@[OEIS := A162024, offset := 2, maxIndex := 99, derive := true]
def A162024 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (_x y) ↦ 2 + (y * y)) (2 + (x + x)) x + if x ≤ 0 then 1 else 2

end Sequence