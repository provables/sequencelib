/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063281 sequence
-/

namespace Sequence

@[OEIS := A063281, offset := 2, maxIndex := 67, derive := true]
def A063281 (n : ℕ) : ℤ :=
  let x := n - 2
  (((x * (x % 2)) - 2) / 4) + x

end Sequence