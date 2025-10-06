/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A126644 sequence
-/

namespace Sequence

@[OEIS := A126644, offset := 1, maxIndex := 24, derive := true]
def A126644 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ 3 * (x + y)) (λ (_x y) ↦ y + y) x 3 2 + 1

end Sequence