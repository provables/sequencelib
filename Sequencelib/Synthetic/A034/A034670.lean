/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A034670 sequence
-/

namespace Sequence

@[OEIS := A034670, offset := 0, maxIndex := 7, derive := true]
def A034670 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ 1 + loop (λ (x _y) ↦ x + x) y x) (λ (_x y) ↦ y) (2 * 3) 1 x

end Sequence