/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A259486 sequence
-/

namespace Sequence

@[OEIS := A259486, offset := 1, maxIndex := 47, derive := true]
def A259486 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (_x y) ↦ (y * y) + y) (x + x) 1 / 3) * 3) + 1

end Sequence