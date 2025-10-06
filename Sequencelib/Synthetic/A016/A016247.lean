/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016247 sequence
-/

namespace Sequence

@[OEIS := A016247, offset := 0, maxIndex := 20, derive := true]
def A016247 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ 1 + (loop (λ (x _y) ↦ 1 + (x + x)) 2 2 * x)) y 1 + ((x + x) + x) * 2) x 1

end Sequence