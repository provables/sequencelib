/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070658 sequence
-/

namespace Sequence

@[OEIS := A070658, offset := 0, maxIndex := 79, derive := true]
def A070658 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ (x * x) * y) (λ (x _y) ↦ x) 3 2 x * x) % (loop (λ (x _y) ↦ 2 * ((x + x) + x)) 2 1 - 1)

end Sequence