/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A070636 sequence
-/

namespace Sequence

@[OEIS := A070636, offset := 0, maxIndex := 83, derive := true]
def A070636 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ x * x) 2 x * (x * x)) % (1 + (2 * (2 + 4)))

end Sequence