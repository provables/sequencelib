/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A069210 sequence
-/

namespace Sequence

@[OEIS := A069210, offset := 1, maxIndex := 73, derive := true]
def A069210 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((1 + (x / 2)) / loop (λ (x _y) ↦ x * x) 2 2) + x) / 2) + x) / 2) + 1

end Sequence