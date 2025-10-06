/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A172513 sequence
-/

namespace Sequence

@[OEIS := A172513, offset := 1, maxIndex := 60, derive := true]
def A172513 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((loop2 (λ (x y) ↦ (x % 2) + y) (λ (x _y) ↦ x) x 1 0 / 2) / 2) / 2) + 1) + x) / 2) / 2) + 1) + x) + x) + x

end Sequence