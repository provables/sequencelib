/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A204092 sequence
-/

namespace Sequence

@[OEIS := A204092, offset := 0, maxIndex := 24, derive := true]
def A204092 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop2 (λ (x y) ↦ 2 * ((x + x) + y)) (λ (x y) ↦ x + y) x 2 1 + 1) / 2) + 2) - loop (λ (x _y) ↦ x + x) x 2

end Sequence