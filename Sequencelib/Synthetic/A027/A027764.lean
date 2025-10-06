/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027764 sequence
-/

namespace Sequence

@[OEIS := A027764, offset := 3, maxIndex := 100, derive := true]
def A027764 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x y) ↦ (2 + (2 + y)) * x) x (4 + x) / loop (λ (x y) ↦ x * y) x 1

end Sequence