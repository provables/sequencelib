/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A246642 sequence
-/

namespace Sequence

@[OEIS := A246642, offset := 0, maxIndex := 100, derive := true]
def A246642 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * loop (λ (x _y) ↦ 3 * (1 + x)) 2 x) - y) (λ (x _y) ↦ x) x 1 1

end Sequence