/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051399 sequence
-/

namespace Sequence

@[OEIS := A051399, offset := 0, maxIndex := 43, derive := true]
def A051399 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + (loop (λ (x y) ↦ x * y) y x / y)) x 0

end Sequence