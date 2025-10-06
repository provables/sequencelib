/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A014628 sequence
-/

namespace Sequence

@[OEIS := A014628, offset := 3, maxIndex := 40, derive := true]
def A014628 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| ((loop (λ (x _y) ↦ x * x) 1 (loop (λ (x y) ↦ 1 + (x + y)) x 2) / 3) + 2) + x

end Sequence