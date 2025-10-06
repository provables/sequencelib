/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A336337 sequence
-/

namespace Sequence

@[OEIS := A336337, offset := 0, maxIndex := 27, derive := true]
def A336337 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ 1 + ((2 + y) * x)) (λ (_x _y) ↦ 1) x 1 2 - loop (λ (x _y) ↦ x + x) x 1

end Sequence