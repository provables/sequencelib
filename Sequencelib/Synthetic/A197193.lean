/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A197193 sequence
-/

namespace Sequence

@[OEIS := A197193, offset := 0, maxIndex := 100, derive := true]
def A197193 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((2 * ((2 * (x + x)) + x)) / y) + x) x 1 * loop (λ (x _y) ↦ (3 * (x + x)) + x) x 1

end Sequence