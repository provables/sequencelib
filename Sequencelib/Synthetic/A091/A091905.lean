/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A091905 sequence
-/

namespace Sequence

@[OEIS := A091905, offset := 0, maxIndex := 19, derive := true]
def A091905 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x + x) (x + x) 1 * loop2 (λ (_x y) ↦ 2 * y) (λ (x y) ↦ x + y) x 1 0

end Sequence