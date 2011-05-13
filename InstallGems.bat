@ECHO *** Installing Rake
@call gem install rake --no-rdoc --no-ri

@ECHO *** Installing Albacore (build support tools)
@call gem install albacore --no-rdoc --no-ri

@ECHO *** Installing RedCloth (Textfile generator)
@call gem install -v=4.2.2 --platform=mswin32 RedCloth --no-rdoc --no-ri