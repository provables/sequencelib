/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A060747 sequence
-/

namespace Sequence

@[OEIS := A060747, offset := 0, maxIndex := 76, derive := true]
def A060747 (x : ℕ) : ℤ :=
  (x - 1) + x

end Sequence