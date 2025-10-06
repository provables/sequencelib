/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063305 sequence
-/

namespace Sequence

@[OEIS := A063305, offset := 2, maxIndex := 51, derive := true]
def A063305 (n : ℕ) : ℤ :=
  let x := n - 2
  (loop2 (λ (x y) ↦ 2 + (x + y)) (λ (_x _y) ↦ 2) (x + x) x 0 * 2) - 1

end Sequence