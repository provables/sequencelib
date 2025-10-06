/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A127630 sequence
-/

namespace Sequence

@[OEIS := A127630, offset := 0, maxIndex := 55, derive := true]
def A127630 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ y) (λ (x _y) ↦ (-x)) x (1 + x) x

end Sequence