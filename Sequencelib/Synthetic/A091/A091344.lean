/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A091344 sequence
-/

namespace Sequence

@[OEIS := A091344, offset := 0, maxIndex := 25, derive := true]
def A091344 (x : ℕ) : ℕ :=
  Int.toNat <| 1 - loop2 (λ (x y) ↦ 2 * ((x + x) - y)) (λ (x y) ↦ x + y) x 1 2

end Sequence