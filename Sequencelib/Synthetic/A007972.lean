/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A007972 sequence
-/

namespace Sequence

@[OEIS := A007972, offset := 3, maxIndex := 99, derive := true]
def A007972 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| ((1 + x) * loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) (2 + y) x) x 1) + 1

end Sequence