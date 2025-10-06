/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010023 sequence
-/

namespace Sequence

@[OEIS := A010023, offset := 0, maxIndex := 100, derive := true]
def A010023 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ (x * x) + x) 2 2 * x) * x) + if x ≤ 0 then 1 else 2

end Sequence