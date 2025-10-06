/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133852 sequence
-/

namespace Sequence

@[OEIS := A133852, offset := 1, maxIndex := 5, derive := true]
def A133852 (n : ℕ) : ℤ :=
  let x := n - 1
  ((-loop (λ (x y) ↦ x - y) (x - 2) 2)) - x

end Sequence