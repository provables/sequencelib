/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A010701 sequence
-/


namespace Sequence

@[OEIS := A010701, offset := 0, derive := true, maxIndex := 81]
def A010701 (_x : ℕ) : ℕ := 3

end Sequence
