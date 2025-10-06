/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022126 sequence
-/

namespace Sequence

@[OEIS := A022126, offset := 0, maxIndex := 100, derive := true]
def A022126 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ loop (λ (x _y) ↦ x * x) 2 2 + y) (λ (x y) ↦ x + y) x 3 0

end Sequence