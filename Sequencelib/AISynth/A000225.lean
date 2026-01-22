/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000225 sequence
-/

namespace Sequence

@[OEIS := A000225, offset := 0, maxIndex := 100, derive := true]

def A000225 : ℕ → ℕ 
| 0 => 0
| n + 1 => 2 * A000225 n + 1


end Sequence