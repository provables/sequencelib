/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130683 sequence
-/

namespace Sequence

@[OEIS := A130683, offset := 0, maxIndex := 18, derive := true]
def A130683 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ 2 * (x * y)) (1 + x) 2

end Sequence