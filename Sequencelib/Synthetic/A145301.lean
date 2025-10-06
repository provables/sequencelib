/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A145301 sequence
-/

namespace Sequence

@[OEIS := A145301, offset := 0, maxIndex := 20, derive := true]
def A145301 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * ((x + x) + x)) + y) (λ (x y) ↦ 3 * ((x + y) * 2)) x 2 0 / 2

end Sequence