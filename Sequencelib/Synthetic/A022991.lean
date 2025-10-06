/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A022991 sequence
-/

namespace Sequence

@[OEIS := A022991, offset := 0, maxIndex := 60, derive := true]
def A022991 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ loop (λ (x y) ↦ (x + x) + y) x x) 2 1 - x

end Sequence