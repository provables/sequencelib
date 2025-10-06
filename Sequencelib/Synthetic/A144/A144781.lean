/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A144781 sequence
-/

namespace Sequence

@[OEIS := A144781, offset := 1, maxIndex := 8, derive := true]
def A144781 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ 1 + ((x * x) - x)) x (2 * 4)

end Sequence