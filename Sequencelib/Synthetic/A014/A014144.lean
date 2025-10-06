/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A014144 sequence
-/

namespace Sequence

@[OEIS := A014144, offset := 0, maxIndex := 50, derive := true]
def A014144 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ loop2 (λ (x y) ↦ 1 + (x * y)) (λ (_x y) ↦ y - 1) x 0 x) 1 y + x) x 0

end Sequence