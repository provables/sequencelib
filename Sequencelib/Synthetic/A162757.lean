/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A162757 sequence
-/

namespace Sequence

@[OEIS := A162757, offset := 0, maxIndex := 19, derive := true]
def A162757 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * ((x + x) + x)) + y) (λ (x y) ↦ 3 * ((x + y) + y)) x 1 1

end Sequence