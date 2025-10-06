/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A290198 sequence
-/

namespace Sequence

@[OEIS := A290198, offset := 0, maxIndex := 100, derive := true]
def A290198 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x y) ↦ 2 * (x * y)) x 2 - x * x) / loop (λ (x y) ↦ x * y) x 1) - 1

end Sequence