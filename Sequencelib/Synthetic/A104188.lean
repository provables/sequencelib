/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A104188 sequence
-/

namespace Sequence

@[OEIS := A104188, offset := 0, maxIndex := 39, derive := true]
def A104188 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 * (y - x)) 4 x * x

end Sequence