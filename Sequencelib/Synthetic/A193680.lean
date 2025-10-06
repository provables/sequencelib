/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A193680 sequence
-/

namespace Sequence

@[OEIS := A193680, offset := 0, maxIndex := 89, derive := true]
def A193680 (x : ℕ) : ℕ :=
  Int.toNat <| 2 - if (x % 3) ≤ 0 then 2 else x % 2

end Sequence