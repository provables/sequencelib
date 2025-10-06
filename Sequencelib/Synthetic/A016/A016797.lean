/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016797 sequence
-/

namespace Sequence

@[OEIS := A016797, offset := 0, maxIndex := 17, derive := true]
def A016797 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x * x) * x) 2 (2 + ((x + x) + x))

end Sequence