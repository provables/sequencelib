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

# A289207 sequence 
-/

namespace Sequence

@[OEIS := A289207, offset := 0]
def A289207 (n : ℕ) : ℤ :=
  let x := n - 0
  comprN (λ(x : ℤ) ↦ 0) ((x - 2))


end Sequence
