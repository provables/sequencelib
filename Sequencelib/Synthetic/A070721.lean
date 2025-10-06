/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070721 sequence
-/

namespace Sequence

@[OEIS := A070721, offset := 0, maxIndex := 76, derive := true]
def A070721 (x : ℕ) : ℤ :=
  ((x * x) * x) % (2 + loop (λ (x _y) ↦ 2 + (x * x)) 2 2)

end Sequence