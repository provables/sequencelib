/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A341740 sequence
-/

namespace Sequence

@[OEIS := A341740, offset := 3, maxIndex := 51, derive := true]
def A341740 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| ((3 * loop (λ (x y) ↦ x + y) (x + 2) 1) + x) + x

end Sequence