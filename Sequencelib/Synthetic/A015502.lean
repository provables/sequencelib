/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A015502 sequence
-/

namespace Sequence

@[OEIS := A015502, offset := 1, maxIndex := 49, derive := true]
def A015502 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ ((x - 1) + x) + x) y 2 * x) (x - 1) 1

end Sequence