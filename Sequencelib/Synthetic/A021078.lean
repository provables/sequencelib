/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021078 sequence
-/

namespace Sequence

@[OEIS := A021078, offset := 0, maxIndex := 99, derive := true]
def A021078 (x : ℕ) : ℕ :=
  Int.toNat <| ((x - 1) + if x ≤ 0 then 1 else x) % (3 * 2)

end Sequence