/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A068000 sequence
-/

namespace Sequence

@[OEIS := A068000, offset := 1, maxIndex := 5, derive := true]
def A068000 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((x / 2) + x) - y) x (loop (λ (x _y) ↦ x + x) x 1)

end Sequence