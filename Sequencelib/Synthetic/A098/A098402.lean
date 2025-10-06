/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A098402 sequence
-/

namespace Sequence

@[OEIS := A098402, offset := 0, maxIndex := 100, derive := true]
def A098402 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y) ↦ 2 * (x * y)) (λ (_x y) ↦ 1 + y) x 1 x / loop (λ (x y) ↦ x * y) x 1) * loop (λ (x _y) ↦ x + x) x 1

end Sequence