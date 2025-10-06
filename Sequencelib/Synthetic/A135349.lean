/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135349 sequence
-/

namespace Sequence

@[OEIS := A135349, offset := 0, maxIndex := 7, derive := true]
def A135349 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (2 * (x + x)) + x) (x * x) 1 * loop (λ (x _y) ↦ 2 * ((x + x) + x)) x 1

end Sequence