/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A095265 sequence
-/

namespace Sequence

@[OEIS := A095265, offset := 1, maxIndex := 36, derive := true]
def A095265 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ 2 * (2 + x)) 2 2 * (y * y)) + x) x 1 + x

end Sequence