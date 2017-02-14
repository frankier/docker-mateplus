# Liblinear
wget -O ./lib/liblinear-java-1.95.jar http://www.bwaldvogel.de/liblinear-java/liblinear-java-1.95.jar

# Stanford CoreNLP
wget http://nlp.stanford.edu/software/stanford-corenlp-full-2016-10-31.zip
unzip stanford-corenlp-full-2016-10-31.zip
mv stanford-corenlp-full-2016-10-31/stanford-corenlp-3.7.0.jar lib
mv stanford-corenlp-full-2016-10-31/stanford-corenlp-3.7.0-models.jar lib/
mv liblinear-java-1.95.jar lib

# Dependency parser + model files

wget -O ./lib/anna-3.3.jar https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/mate-tools/anna-3.3.jar
wget -O ./models/parse-eng.model https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/mate-tools/CoNLL2009-ST-English-ALL.anna-3.3.parser.model
wget -O ./models/tagger-eng.model https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/mate-tools/CoNLL2009-ST-English-ALL.anna-3.3.postagger.model
wget -O ./models/lemma-eng.model https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/mate-tools/CoNLL2009-ST-English-ALL.anna-3.3.lemmatizer.model

# SRL model
CODE=$(wget --save-cookies cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=0B5aLxfs6OvZBUHRFOEcyLTMzWFE' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')
wget --load-cookies cookies.txt "https://drive.google.com/uc?export=download&confirm=$CODE&id=0B5aLxfs6OvZBUHRFOEcyLTMzWFE"
