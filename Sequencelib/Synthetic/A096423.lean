/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A096423 sequence
-/

namespace Sequence

@[OEIS := A096423, offset := 1, maxIndex := 12, derive := true]
def A096423 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x y) ↦ (1 + x) * (1 + y)) x 1 1

end Sequence