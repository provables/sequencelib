/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A316631 sequence
-/

namespace Sequence

@[OEIS := A316631, offset := 0, maxIndex := 100, derive := true]
def A316631 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x _y) ↦ (if (x % 2) ≤ 0 then x else 0) / 2) 2 x + x) - x % 2) + 1) % (x + 1)

end Sequence