/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A193218 sequence
-/

namespace Sequence

@[OEIS := A193218, offset := 1, maxIndex := 100, derive := true]
def A193218 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (x + y) * y) (λ (x _y) ↦ x) 2 (1 + (x + x)) x

end Sequence