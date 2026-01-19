git clone git@github.com:irebased/CiphertextEcosystemProtobuf.git
cd CiphertextEcosystemProtobuf
protoc \
  --plugin=protoc-gen-ts_proto=../node_modules/.bin/protoc-gen-ts_proto \
  --ts_proto_out=../ \
  --ts_proto_opt=esModuleInterop=true,forceLong=string,useOptionals=true \
  ./model/ciphertext.proto
# cd ..
# mv model/ciphertext.ts index.ts
# rm -rf model
# rm -rf CiphertextEcosystemProtobuf