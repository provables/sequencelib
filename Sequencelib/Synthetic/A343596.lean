/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A343596 sequence
-/

namespace Sequence

@[OEIS := A343596, offset := 2, maxIndex := 6, derive := true]
def A343596 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((((loop2 (λ (_x y) ↦ 1 + y) (λ (x _y) ↦ x) x 1 (x + x) * x) + 2) * 2) + x) / 2

end Sequence