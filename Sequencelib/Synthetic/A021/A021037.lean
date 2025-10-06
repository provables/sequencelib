/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A021037 sequence
-/

namespace Sequence

@[OEIS := A021037, offset := 0, maxIndex := 98, derive := true]
def A021037 (x : ℕ) : ℤ :=
  3 * (x % 2)

end Sequence