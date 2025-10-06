/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A162673 sequence
-/

namespace Sequence

@[OEIS := A162673, offset := 1, maxIndex := 34, derive := true]
def A162673 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (((x - 1) / 2) + x) * x) 1 ((x * x) + x)

end Sequence