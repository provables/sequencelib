/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A296954 sequence
-/

namespace Sequence

@[OEIS := A296954, offset := 0, maxIndex := 100, derive := true]
def A296954 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y) ↦ loop (λ (x _y) ↦ 2 * (2 + x)) y 2) (x - 2) x

end Sequence