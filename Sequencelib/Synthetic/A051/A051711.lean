/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051711 sequence
-/

namespace Sequence

@[OEIS := A051711, offset := 0, maxIndex := 100, derive := true]
def A051711 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ loop (λ (x y) ↦ x * y) y 2 * x) (λ (_x _y) ↦ 2) x 1 x

end Sequence