Require Import Coq.Strings.String.
Require Import Coq.extraction.ExtrOcamlString.

Definition hello := "Hello, World!".

Extraction "hello" hello.
