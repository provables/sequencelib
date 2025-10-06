/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A266613 sequence
-/

namespace Sequence

@[OEIS := A266613, offset := 0, maxIndex := 100, derive := true]
def A266613 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * (x + x)) + y) (λ (x y) ↦ 2 % (x + y)) x 1 1 / loop (λ (x _y) ↦ x + x) x 1

end Sequence