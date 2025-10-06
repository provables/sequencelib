/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A038505 sequence
-/

namespace Sequence

@[OEIS := A038505, offset := 0, maxIndex := 100, derive := true]
def A038505 (x : ℕ) : ℕ :=
  Int.toNat <| (((1 + loop2 (λ (x y) ↦ 2 * (1 + (x - y))) (λ (x _y) ↦ x) x 0 1) + loop (λ (x _y) ↦ x + x) x 1) / 2) / 2

end Sequence