/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A024005 sequence
-/

namespace Sequence

@[OEIS := A024005, offset := 0, maxIndex := 100, derive := true]
def A024005 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (x * x) * y) (λ (x _y) ↦ x) 2 ((-x)) x + 1

end Sequence