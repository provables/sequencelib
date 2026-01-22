/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000108 sequence
-/

namespace Sequence

@[OEIS := A000108, offset := 0, maxIndex := 30, derive := true]

def A000108 : ℕ → ℕ 
| 0 => 1
| n + 1 => (4 * n + 2) * A000108 n / (n + 2)


end Sequence