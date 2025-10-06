/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094432 sequence
-/

namespace Sequence

@[OEIS := A094432, offset := 1, maxIndex := 21, derive := true]
def A094432 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (x + x) + y) (λ (x y) ↦ 3 * ((x + y) + y)) x 0 1 * 3

end Sequence