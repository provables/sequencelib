/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000027 sequence
-/

namespace Sequence

@[OEIS := A000027, offset := 1, maxIndex := 100, derive := true]

def A000027 : ℕ → ℕ := id


end Sequence