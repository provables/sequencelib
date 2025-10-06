/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027993 sequence
-/

namespace Sequence

@[OEIS := A027993, offset := 0, maxIndex := 27, derive := true]
def A027993 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 2 * (x + y)) x (1 + x)

end Sequence