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
# A328943 sequence 
-/


namespace Sequence

@[OEIS := A328943, offset := 0, derive := true, maxIndex := 100]
def A328943 (x : ℕ) : ℕ :=
  Int.toNat <| (2 + (x % 4))

end Sequence

