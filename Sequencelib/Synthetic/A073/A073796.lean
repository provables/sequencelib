/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A073796 sequence
-/

namespace Sequence

@[OEIS := A073796, offset := 0, maxIndex := 62, derive := true]
def A073796 (x : ℕ) : ℤ :=
  (2 * (x % (1 + (2 * 4)))) - x

end Sequence