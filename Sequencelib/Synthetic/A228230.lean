/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A228230 sequence
-/

namespace Sequence

@[OEIS := A228230, offset := 0, maxIndex := 100, derive := true]
def A228230 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + (loop (λ (x y) ↦ x + y) y 0 * x)) x 1

end Sequence