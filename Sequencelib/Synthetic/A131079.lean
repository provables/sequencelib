/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131079 sequence
-/

namespace Sequence

@[OEIS := A131079, offset := 1, maxIndex := 100, derive := true]
def A131079 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (x + y) / 2) (λ (x y) ↦ y - x) x 1 2 + 1

end Sequence