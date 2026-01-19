git clone git@github.com:irebased/CiphertextEcosystemProtobuf.git
cd CiphertextEcosystemProtobuf
protoc \
  --plugin=protoc-gen-ts_proto=../node_modules/.bin/protoc-gen-ts_proto \
  --ts_proto_out=../ \
  model/ciphertext.proto
cd ..
mv model/ciphertext.ts index.ts
rm -rf model
rm -rf CiphertextEcosystemProtobuf