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

# A181983 sequence 
-/

namespace Sequence

@[OEIS := A181983, offset := 0]
def A181983 (n : ℕ) : ℤ :=
  let x := n - 0
  (0 - loop (λ(x y : ℤ) ↦ (0 - x)) (x) (x))


end Sequence
