/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A239229 sequence
-/

namespace Sequence

@[OEIS := A239229, offset := 0, maxIndex := 52, derive := true]
def A239229 (x : ℕ) : ℤ :=
  2 - (x + x)

end Sequence