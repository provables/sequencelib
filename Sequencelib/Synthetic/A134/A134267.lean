/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134267 sequence
-/

namespace Sequence

@[OEIS := A134267, offset := 1, maxIndex := 41, derive := true]
def A134267 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((x - 1) % (2 * (2 - (x % 2)))) + if x ≤ 0 then 0 else 2

end Sequence