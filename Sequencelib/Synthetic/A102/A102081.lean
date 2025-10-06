/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A102081 sequence
-/

namespace Sequence

@[OEIS := A102081, offset := 1, maxIndex := 29, derive := true]
def A102081 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 * (x % 2)) + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 2

end Sequence