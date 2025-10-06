/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A290864 sequence
-/

namespace Sequence

@[OEIS := A290864, offset := 1, maxIndex := 4, derive := true]
def A290864 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ (((x * x) + x) + 1) * y) x 1 * (1 + x)) + 1) - (x + x) * x

end Sequence