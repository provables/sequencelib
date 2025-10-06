/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A274103 sequence
-/

namespace Sequence

@[OEIS := A274103, offset := 1, maxIndex := 5, derive := true]
def A274103 (n : ℕ) : ℤ :=
  let x := n - 1
  1 + loop (λ (x y) ↦ 1 + ((x * y) + x)) x 2

end Sequence