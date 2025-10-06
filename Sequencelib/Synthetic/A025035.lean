/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A025035 sequence
-/

namespace Sequence

@[OEIS := A025035, offset := 0, maxIndex := 100, derive := true]
def A025035 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ x * y) ((x + x) + x) 1 / loop (λ (x y) ↦ 2 * (((x + x) + x) * y)) x 1

end Sequence