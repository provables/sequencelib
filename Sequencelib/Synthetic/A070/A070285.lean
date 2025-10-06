/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070285 sequence
-/

namespace Sequence

@[OEIS := A070285, offset := 2, maxIndex := 96, derive := true]
def A070285 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop2 (λ (x y) ↦ (1 + y) * (x * y)) (λ (_x y) ↦ y) x 1 (x + 1) * (1 + x)

end Sequence