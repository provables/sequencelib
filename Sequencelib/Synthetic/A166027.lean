/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A166027 sequence
-/

namespace Sequence

@[OEIS := A166027, offset := 1, maxIndex := 29, derive := true]
def A166027 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x _y) ↦ 2 * (x * 3)) x 4 1

end Sequence