/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A147976 sequence
-/

namespace Sequence

@[OEIS := A147976, offset := 1, maxIndex := 22, derive := true]
def A147976 (n : ℕ) : ℤ :=
  let x := n - 1
  (((loop (λ (x _y) ↦ (2 * (x + x)) + x) x 1 - loop (λ (x _y) ↦ (x + x) + x) x 1) - loop (λ (x _y) ↦ x + x) (x + x) 1) -
    loop (λ (x _y) ↦ x + x) x 1) -
  1

end Sequence