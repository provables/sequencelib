/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A254749 sequence
-/

namespace Sequence

@[OEIS := A254749, offset := 1, maxIndex := 100, derive := true]
def A254749 (n : ℕ) : ℤ :=
  let x := n - 1
  1 + loop (λ (x y) ↦ loop (λ (x y) ↦ x - y) y x + y) x x

end Sequence