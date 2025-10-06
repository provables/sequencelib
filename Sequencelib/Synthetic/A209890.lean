/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A209890 sequence
-/

namespace Sequence

@[OEIS := A209890, offset := 1, maxIndex := 100, derive := true]
def A209890 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (x + x) + y) (λ (x _y) ↦ x) (2 + x) 1 1 * loop (λ (x _y) ↦ x + x) x 1

end Sequence