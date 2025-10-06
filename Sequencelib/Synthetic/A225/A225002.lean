/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A225002 sequence
-/

namespace Sequence

@[OEIS := A225002, offset := 1, maxIndex := 61, derive := true]
def A225002 (n : ℕ) : ℤ :=
  let x := n - 1
  1 + ((((2 + x) / 3) + x) + x)

end Sequence