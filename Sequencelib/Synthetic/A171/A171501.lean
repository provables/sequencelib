/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A171501 sequence
-/

namespace Sequence

@[OEIS := A171501, offset := 0, maxIndex := 100, derive := true]
def A171501 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ 1 + ((y - x) * y)) (λ (_x _y) ↦ 2) x x x

end Sequence