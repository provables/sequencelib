/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A162992 sequence
-/

namespace Sequence

@[OEIS := A162992, offset := 2, maxIndex := 15, derive := true]
def A162992 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (loop (λ (x y) ↦ (x * y) * y) (3 + x) 1 / (1 + x)) / (1 + x)

end Sequence