/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A342126 sequence
-/

namespace Sequence

@[OEIS := A342126, offset := 0, maxIndex := 100, derive := true]
def A342126 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ loop (λ (x y) ↦ (x - 1) % y) x 0) 2 x - x) 2 x

end Sequence