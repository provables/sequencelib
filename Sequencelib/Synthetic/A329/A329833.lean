/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A329833 sequence
-/

namespace Sequence

@[OEIS := A329833, offset := 1, maxIndex := 64, derive := true]
def A329833 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((((loop (λ (x _y) ↦ x / 3) 2 x + x) / 2) + y) % 2) + x) x 1 + x

end Sequence