/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A194517 sequence
-/

namespace Sequence

@[OEIS := A194517, offset := 1, maxIndex := 94, derive := true]
def A194517 (n : ℕ) : ℤ :=
  let x := n - 1
  (2 + (3 * (((((x - 2) / 2) + x) / 2) / 2))) - x

end Sequence