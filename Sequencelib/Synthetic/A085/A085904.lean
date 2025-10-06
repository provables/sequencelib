/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085904 sequence
-/

namespace Sequence

@[OEIS := A085904, offset := 1, maxIndex := 10, derive := true]
def A085904 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ (2 * (2 + (x * y))) + x) x 1 / loop (λ (x _y) ↦ (x * x) + 1) 3 x) + 1) + x

end Sequence