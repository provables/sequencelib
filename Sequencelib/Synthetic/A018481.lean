/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A018481 sequence
-/

namespace Sequence

@[OEIS := A018481, offset := 1, maxIndex := 12, derive := true]
def A018481 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x _y) ↦ (x + x) + x) x 1 2

end Sequence