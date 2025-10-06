/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A203307 sequence
-/

namespace Sequence

@[OEIS := A203307, offset := 1, maxIndex := 49, derive := true]
def A203307 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (((2 * (x * y)) - x) * 2) * y) (λ (_x y) ↦ 2 * (y)) x 1 2

end Sequence