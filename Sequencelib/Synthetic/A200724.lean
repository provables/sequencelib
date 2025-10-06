/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A200724 sequence
-/

namespace Sequence

@[OEIS := A200724, offset := 0, maxIndex := 100, derive := true]
def A200724 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (loop (λ (x _y) ↦ 2 * ((x + x) + x)) 2 x - x) - y) (λ (x _y) ↦ x) x 1 0

end Sequence