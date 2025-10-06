/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106400 sequence
-/

namespace Sequence

@[OEIS := A106400, offset := 0, maxIndex := 100, derive := true]
def A106400 (x : ℕ) : ℤ :=
  ((loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 2) x 1 x % 2) * 2) - 1

end Sequence