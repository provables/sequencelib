/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A073795 sequence
-/

namespace Sequence

@[OEIS := A073795, offset := 0, maxIndex := 63, derive := true]
def A073795 (x : ℕ) : ℤ :=
  (2 * (x % (2 * 4))) - x

end Sequence