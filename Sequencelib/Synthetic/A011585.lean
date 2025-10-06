/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011585 sequence
-/

namespace Sequence

@[OEIS := A011585, offset := 0, maxIndex := 100, derive := true]
def A011585 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ ((1 + ((x * x) * x)) % (1 + (2 + loop (λ (x _y) ↦ x * x) 2 2))) - 1) 2 x

end Sequence