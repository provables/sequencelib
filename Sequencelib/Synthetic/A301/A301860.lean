/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A301860 sequence
-/

namespace Sequence

@[OEIS := A301860, offset := 2, maxIndex := 6, derive := true]
def A301860 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (2 * (2 + (2 + x))) + if (x / 2) ≤ 0 then 2 else 0

end Sequence