/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133070 sequence
-/

namespace Sequence

@[OEIS := A133070, offset := 0, maxIndex := 100, derive := true]
def A133070 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (x * y) - y) (λ (x _y) ↦ x) 2 (x * x) x

end Sequence