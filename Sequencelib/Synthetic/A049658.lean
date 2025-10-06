/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A049658 sequence
-/

namespace Sequence


@[OEIS := A049658, offset := 0]
def A049658 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (((2 * y) * 2) * 2) 1 2 + x) x 1

end Sequence