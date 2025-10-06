/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A158592 sequence
-/

namespace Sequence

@[OEIS := A158592, offset := 0, maxIndex := 100, derive := true]
def A158592 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((2 * loop (λ (x _y) ↦ (x + x) + x) 2 x) + x) + y) 2 (x * x) - 2

end Sequence