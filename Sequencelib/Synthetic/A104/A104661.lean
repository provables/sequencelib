/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A104661 sequence
-/

namespace Sequence

@[OEIS := A104661, offset := 1, maxIndex := 67, derive := true]
def A104661 (n : ℕ) : ℤ :=
  let x := n - 1
  2 + x

end Sequence