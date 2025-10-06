/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106392 sequence
-/

namespace Sequence

@[OEIS := A106392, offset := 0, maxIndex := 100, derive := true]
def A106392 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (2 * (x + x)) + y) (λ (x y) ↦ (y - x) * 2) x 1 2

end Sequence