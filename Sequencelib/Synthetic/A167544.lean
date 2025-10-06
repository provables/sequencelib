/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A167544 sequence
-/

namespace Sequence

@[OEIS := A167544, offset := 4, maxIndex := 100, derive := true]
def A167544 (n : ℕ) : ℤ :=
  let x := n - 4
  (-loop (λ (x y) ↦ 2 + (x - y)) x 2)

end Sequence