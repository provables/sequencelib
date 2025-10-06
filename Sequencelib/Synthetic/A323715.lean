/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A323715 sequence
-/

namespace Sequence

@[OEIS := A323715, offset := 0, maxIndex := 62, derive := true]
def A323715 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ x + x) y x + x * (loop (λ (x _y) ↦ (x + x) + x) y 1)) x 1 * 2

end Sequence