/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A098938 sequence
-/

namespace Sequence

@[OEIS := A098938, offset := 0, maxIndex := 16, derive := true]
def A098938 (x : ℕ) : ℤ :=
  (loop (λ (x _y) ↦ (x - 1) + x) 4 x * x) + loop (λ (x y) ↦ x - y) x x

end Sequence