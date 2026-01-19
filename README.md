# Ciphertext Ecosystem TypeScript Models

This dependency defines the models for the ciphertext ecosystem, used for building tools that will help solve unsolved ciphers.

## Usage

First, install the package with `npm install ctes-models-ts`.

Example usage of the models:

```ts
import { Ciphertext, CiphertextMetadata, Encoding, EncodingMetadata } from "ctes-models-ts";

const myBytes: Uint8Array = Buffer.from("aa bc de ff", 'hex');

const encoding: EncodingMetadata = {
    encoding: Encoding.BASE_CONVERSION,
    base: 16
}

const myCiphertextMetadata: CiphertextMetadata = {
    type: "",
    encoding: encoding
}

const myCiphertext: Ciphertext = {
    bytes: myBytes,
    metadata: myCiphertextMetadata
}
```

## Generating the model

Requires installing the [Protoc CLI](https://protobuf.dev/installation/).

Run `npm install` then `npm run generate` to generate the latest version of the model.