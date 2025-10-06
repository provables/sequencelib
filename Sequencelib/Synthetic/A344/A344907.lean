/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A344907 sequence
-/

namespace Sequence

@[OEIS := A344907, offset := 1, maxIndex := 38, derive := true]
def A344907 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (y * y) + x) (λ (_x y) ↦ 2 + y) x 1 0 * ((x + x) + x)

end Sequence