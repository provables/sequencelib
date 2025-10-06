/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A028401 sequence
-/

namespace Sequence

@[OEIS := A028401, offset := 2, maxIndex := 100, derive := true]
def A028401 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop2 (λ (x y) ↦ (x + x) + y) (λ (_x y) ↦ 2 * (y + y)) x 2 1 + 1

end Sequence