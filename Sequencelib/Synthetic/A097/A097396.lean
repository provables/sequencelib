/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A097396 sequence
-/

namespace Sequence

@[OEIS := A097396, offset := 1, maxIndex := 10, derive := true]
def A097396 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (x y) ↦ (x * y) + x) (λ (_x y) ↦ y) (1 + x) 1 x + loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ y) x 1 x

end Sequence