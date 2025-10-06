/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A292018 sequence
-/

namespace Sequence

@[OEIS := A292018, offset := 1, maxIndex := 46, derive := true]
def A292018 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((loop (λ (x _y) ↦ x * x) 2 2 * y) - y) + x) x 1 - x

end Sequence