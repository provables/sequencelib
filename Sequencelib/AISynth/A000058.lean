/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000058 sequence
-/

namespace Sequence

@[OEIS := A000058, offset := 0, maxIndex := 11, derive := true]

def A000058 : ℕ → ℕ
  | 0 => 2
  | n + 1 => (A000058 n) ^ 2 - A000058 n + 1


end Sequence