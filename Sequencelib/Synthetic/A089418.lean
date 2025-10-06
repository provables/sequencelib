/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A089418 sequence
-/

namespace Sequence

@[OEIS := A089418, offset := 0, maxIndex := 20, derive := true]
def A089418 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ 2 * ((2 * ((2 + y) * x)) + x)) x 1 / (1 + x)) % ((1 + x) + 1)

end Sequence