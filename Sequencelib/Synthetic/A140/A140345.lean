/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140345 sequence
-/

namespace Sequence

@[OEIS := A140345, offset := 1, maxIndex := 100, derive := true]
def A140345 (n : ℕ) : ℤ :=
  let x := n - 1
  if ((1 + x) % (1 + 4)) ≤ 0 then (-2) else 1

end Sequence