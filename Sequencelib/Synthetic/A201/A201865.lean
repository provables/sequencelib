/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A201865 sequence
-/

namespace Sequence

@[OEIS := A201865, offset := 0, maxIndex := 100, derive := true]
def A201865 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ (loop (λ (x _y) ↦ (x + x) + x) y 1 - (x + x) * 4) + x) x 1

end Sequence