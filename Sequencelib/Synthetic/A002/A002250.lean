/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002250 sequence
-/

namespace Sequence

@[OEIS := A002250, offset := 0, maxIndex := 100, derive := true]
def A002250 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ x + x) (x + x) 1 - loop (λ (x _y) ↦ (x + x) + x) x 2

end Sequence