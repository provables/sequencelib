/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A038061 sequence
-/

namespace Sequence

@[OEIS := A038061, offset := 1, maxIndex := 15, derive := true]
def A038061 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ 3 * ((x * y) + x)) (λ (_x y) ↦ y) x 1 x * 3

end Sequence