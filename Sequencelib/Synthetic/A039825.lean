/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A039825 sequence
-/

namespace Sequence

@[OEIS := A039825, offset := 1, maxIndex := 50, derive := true]
def A039825 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (loop (λ (x y) ↦ x + y) (1 + x) 2 / 2)

end Sequence